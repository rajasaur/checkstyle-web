package com.collabnet.checkstyle.util;

import com.collabnet.checkstyle.model.Check;
import org.hibernate.Session;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/**
 * Created by IntelliJ IDEA.
 * User: raja
 * Date: 12 May, 2010
 * Time: 10:29:21 AM
 * To change this template use File | Settings | File Templates.
 */
public class CheckHelper {

    public CheckHelper() {

    }

    public Map<String, String> getAllChecks() {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List checks = session.createQuery("from Check where active = true order by checkName").list();
        Map<String,String> checkStyles = new TreeMap<String,String>();
        for (Iterator checkIterator = checks.iterator(); checkIterator.hasNext();) {
            Check check = (Check) checkIterator.next();
            checkStyles.put(check.getCheckName(), check.getCheckDescription());
        }
        session.getTransaction().commit();
        return checkStyles;
    }

    public List<Check> getAllCheckObjects() {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List checks = session.createQuery("from Check where active = true order by checkName").list();
        return checks;
    }

}
