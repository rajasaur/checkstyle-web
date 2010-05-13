package com.collabnet.checkstyle.model;

import java.util.Set;
import java.util.TreeSet;

/**
 * Created by IntelliJ IDEA.
 * User: raja
 * Date: 11 May, 2010
 * Time: 6:08:44 PM
 * To change this template use File | Settings | File Templates.
 */
public class Rule {
    private Long id;
    private String ruleName;
    private String ruleDescription;
    private boolean active = true;
    private Set checks = new TreeSet();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

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

    public Set getChecks() {
        return checks;
    }

    public void setChecks(Set checks) {
        this.checks = checks;
    }
}
