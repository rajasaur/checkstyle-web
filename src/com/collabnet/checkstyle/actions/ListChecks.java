package com.collabnet.checkstyle.actions;

import com.collabnet.checkstyle.AbstractAction;
import com.collabnet.checkstyle.model.Check;
import com.collabnet.checkstyle.util.CheckHelper;
import com.collabnet.checkstyle.util.HibernateUtil;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Session;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/**
 * Created by IntelliJ IDEA.
 * User: raja
 * Date: 11 May, 2010
 * Time: 5:49:34 PM
 * To change this template use File | Settings | File Templates.
 */
public class ListChecks extends AbstractAction {

    public ActionForward execute(ActionMapping mapping,
                                 ActionForm form,
                                 HttpServletRequest request,
                                 HttpServletResponse response) {
        CheckHelper helper = new CheckHelper();
        Map<String, String> checkStyles = helper.getAllChecks();
        request.setAttribute("checkStyles", checkStyles);

        return mapping.findForward("listChecks");
    }

}
