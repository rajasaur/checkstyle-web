<%@ taglib uri="/tags/html" prefix="html"%>
<%@ taglib uri="/tags/logic" prefix="logic" %>
<%@ taglib uri="/tags/bean" prefix="bean" %>

<html:form action="/addRule" method="POST">
    <table border="1" cellpadding="3" cellspacing="4">
        <tr>
            <td>Rule Name: </td>
            <td>
                <html:text name="addRuleForm" property="ruleName" />
            </td>
        </tr>
        <tr>
            <td>Rule Description: </td>
            <td>
                <html:text name="addRuleForm" property="ruleDescription" />
            </td>
        </tr>
        <tr>
            <td>Active: </td>
            <td>
                <html:checkbox name="addRuleForm" property="active"  />
            </td>
        </tr>
        <tr>
            <td>
                Available Checks:
            </td>
            <td>
                <table border="0" cellpadding="1" cellspacing="2">
                    <logic:iterate id="check" name="checkStyles">
                        <tr>
                            <td>
                                <html:multibox name="addRuleForm" property="selectedChecks">
                                    <bean:write name="check" property="id" />
                                </html:multibox>
                            </td>
                            <td><bean:write name="check" property="checkName" /></td>
                            <td><bean:write name="check" property="checkDescription" /></td>
                        </tr>
                    </logic:iterate>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <html:submit />
            </td>
        </tr>
    </table>
</html:form>