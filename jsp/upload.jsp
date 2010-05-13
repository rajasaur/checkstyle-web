<%@ taglib uri="/tags/html" prefix="html"%>
<%@ taglib uri="/tags/logic" prefix="logic" %>
<%@ taglib uri="/tags/bean" prefix="bean" %>

<html:form action="/upload" method="POST" enctype="multipart/form-data">
    <table border="1" cellpadding="3" cellspacing="4">
        <tr>
            <td>Enter Source File: </td>
            <td>
                <html:file name="fileUploadForm" property="file" /><br/>
                <html:errors property="file" />
            </td>
        </tr>
        <tr>
            <td>
                Select a Checkstyle format:
            </td>
            <td>
                <logic:iterate name="fileUploadForm" id="cFile" property="allConfigs">
                    <bean:define id="configFile">
                        <bean:write name="cFile"/>
                    </bean:define>
                    <html:radio name="fileUploadForm" value="<%= configFile %>" property="selectedConfig">
                    </html:radio>
                    <bean:write name="configFile" />
                    <br/>
                </logic:iterate>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <html:submit />
            </td>
        </tr>
    </table>
</html:form>