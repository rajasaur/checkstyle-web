package com.collabnet.checkstyle.actions;

import com.collabnet.checkstyle.AbstractAction;
import com.collabnet.checkstyle.util.HibernateUtil;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by IntelliJ IDEA.
 * User: raja
 * Date: 10 May, 2010
 * Time: 4:01:19 PM
 * To change this template use File | Settings | File Templates.
 */
public class CheckstyleHome extends AbstractAction {
    public ActionForward execute(ActionMapping mapping,
                                          ActionForm form,
                                          HttpServletRequest request,
                                          HttpServletResponse response) {
        HibernateUtil.getSessionFactory();
        return mapping.findForward("view");
    }
}
