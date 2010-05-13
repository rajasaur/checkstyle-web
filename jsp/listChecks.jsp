<%@ taglib uri="/tags/html" prefix="html"%>
<%@ taglib uri="/tags/logic" prefix="logic" %>
<%@ taglib uri="/tags/bean" prefix="bean" %>

<table border="1" cellpadding="2" cellspacing="2">
    <logic:iterate id="check" name="checkStyles">
        <tr>
            <td><bean:write name="check" property="key" /></td>
            <td><bean:write name="check" property="value" /></td>
        </tr>
    </logic:iterate>
</table>
