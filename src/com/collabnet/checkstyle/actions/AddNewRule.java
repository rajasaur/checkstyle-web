package com.collabnet.checkstyle.actions;

import com.collabnet.checkstyle.AbstractAction;
import com.collabnet.checkstyle.forms.AddRuleForm;
import com.collabnet.checkstyle.model.Check;
import com.collabnet.checkstyle.model.Rule;
import com.collabnet.checkstyle.util.CheckHelper;
import com.collabnet.checkstyle.util.HibernateUtil;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Session;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.*;

/**
 * Created by IntelliJ IDEA.
 * User: raja
 * Date: 12 May, 2010
 * Time: 10:24:39 AM
 * To change this template use File | Settings | File Templates.
 */
public class AddNewRule extends AbstractAction {

    public ActionForward execute(ActionMapping mapping,
                                 ActionForm form,
                                 HttpServletRequest request,
                                 HttpServletResponse response) {


        CheckHelper helper = new CheckHelper();
        if ("POST".equals(request.getMethod())) {
            AddRuleForm addForm = (AddRuleForm) form;
            Session sess = HibernateUtil.getSessionFactory().getCurrentSession();
            sess.beginTransaction();
            Rule rule = new Rule();
            rule.setRuleName(addForm.getRuleName());
            rule.setRuleDescription(addForm.getRuleDescription());
            rule.setActive(addForm.isActive());
            String[] selectedChecks = addForm.getSelectedChecks();
            Set checksForRule = new HashSet();
            for (int i = 0; i < selectedChecks.length; i++) {
                String selectedCheck = selectedChecks[i];
                Check thisCheck = (Check) sess.load(Check.class,
                                            new Long(Long.parseLong(selectedCheck)));
                checksForRule.add(thisCheck);
            }
            rule.setChecks(checksForRule);
            sess.save(rule);

            String rulesDir = getServlet().getServletContext().getInitParameter("customRulesDir");
            File rulesFile = new File(rulesDir, rule.getRuleName() + ".xml");
            Map<String,List> parentChecks = new TreeMap<String,List>();
            for (Iterator checkIter = checksForRule.iterator(); checkIter.hasNext();) {
                Check check = (Check) checkIter.next();
                String parent = check.getParent();
                if (! parentChecks.containsKey(parent)) {
                    List checks = new ArrayList();
                    parentChecks.put(parent, checks);
                }
                List checks = parentChecks.get(parent);
                checks.add(check.getCheckName());
            }
            List checkerChecks = parentChecks.get("Checker");
            List treewalkerChecks = parentChecks.get("TreeWalker");
            StringBuffer ruleContents = new StringBuffer("<?xml version=\"1.0\"?>\n" +
                    "<!DOCTYPE module PUBLIC\n" +
                    "    \"-//Puppy Crawl//DTD Check Configuration 1.2//EN\"\n" +
                    "    \"http://www.puppycrawl.com/dtds/configuration_1_2.dtd\">\n");
            ruleContents.append("<module name=\"Checker\">\n");
            if (checkerChecks != null) {
                for (Iterator iterator = checkerChecks.iterator(); iterator.hasNext();) {
                    String checkerCheck =  (String) iterator.next();
                    ruleContents.append("<module name=\"" + checkerCheck + "\"/>\n");
                }
            }
            ruleContents.append("<module name=\"TreeWalker\">\n");
            if (treewalkerChecks != null) {
                for (Iterator iterator = treewalkerChecks.iterator(); iterator.hasNext();) {
                    String twCheck =  (String) iterator.next();
                    ruleContents.append("<module name=\"" + twCheck + "\"/>\n");
                }
            }
            ruleContents.append("</module>\n");
            ruleContents.append("</module>");
            FileWriter writer = null;
            try {
                writer = new FileWriter(rulesFile);
                writer.write(ruleContents.toString());
                writer.close();
            } catch (IOException e) {
                e.printStackTrace();  
            }
            sess.getTransaction().commit();
            return mapping.findForward("home");
        } else {
            request.setAttribute("checkStyles", helper.getAllCheckObjects());
            return mapping.getInputForward();
        }
    }
}
