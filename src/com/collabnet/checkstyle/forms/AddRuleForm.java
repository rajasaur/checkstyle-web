package com.collabnet.checkstyle.forms;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

import javax.servlet.ServletRequest;

/**
 * Created by IntelliJ IDEA.
 * User: raja
 * Date: 12 May, 2010
 * Time: 10:28:01 AM
 * To change this template use File | Settings | File Templates.
 */
public class AddRuleForm extends ActionForm {
    private String ruleName;
    private String ruleDescription;
    private boolean active;
    private String[] selectedChecks;

    public String getRuleName() {
        return ruleName;
    }

    public void setRuleName(String ruleName) {
        this.ruleName = ruleName;
    }

    public String getRuleDescription() {
        return ruleDescription;
    }

    public void setRuleDescription(String ruleDescription) {
        this.ruleDescription = ruleDescription;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String[] getSelectedChecks() {
        return selectedChecks;
    }

    public void setSelectedChecks(String[] selectedChecks) {
        this.selectedChecks = selectedChecks;
    }

    @Override
    public void reset(ActionMapping mapping, ServletRequest request) {
        super.reset(mapping, request);
        setRuleName(null);
        setRuleDescription(null);
        setSelectedChecks(null);
    }
}
