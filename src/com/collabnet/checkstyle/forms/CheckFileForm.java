package com.collabnet.checkstyle.forms;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

import javax.servlet.ServletRequest;

/**
 * Created by IntelliJ IDEA.
 * User: raja
 * Date: 10 May, 2010
 * Time: 7:13:20 PM
 * To change this template use File | Settings | File Templates.
 */
public class CheckFileForm extends ActionForm {
    private FormFile file;
    private String selectedConfig;
    private String[] allConfigs;

    public FormFile getFile() {
        return file;
    }

    public void setFile(FormFile file) {
        this.file = file;
    }

    public String getSelectedConfig() {
        return selectedConfig;
    }

    public void setSelectedConfig(String selectedConfigs) {
        this.selectedConfig = selectedConfigs;
    }

    public String[] getAllConfigs() {
        return allConfigs;
    }

    public void setAllConfigs(String[] allConfigs) {
        this.allConfigs = allConfigs;
    }

}
