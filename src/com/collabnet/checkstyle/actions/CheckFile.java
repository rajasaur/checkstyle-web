package com.collabnet.checkstyle.actions;

import com.collabnet.checkstyle.AbstractAction;
import com.collabnet.checkstyle.forms.CheckFileForm;
import com.collabnet.checkstyle.util.WriterOutputStream;
import com.puppycrawl.tools.checkstyle.Checker;
import com.puppycrawl.tools.checkstyle.ConfigurationLoader;
import com.puppycrawl.tools.checkstyle.DefaultLogger;
import com.puppycrawl.tools.checkstyle.PropertiesExpander;
import com.puppycrawl.tools.checkstyle.api.AuditListener;
import com.puppycrawl.tools.checkstyle.api.CheckstyleException;
import com.puppycrawl.tools.checkstyle.api.Configuration;
import org.apache.struts.action.*;
import org.apache.struts.upload.FormFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: raja
 * Date: 10 May, 2010
 * Time: 7:12:16 PM
 * To change this template use File | Settings | File Templates.
 */
public class CheckFile extends AbstractAction {
    public ActionForward execute(ActionMapping mapping,
                                 ActionForm form,
                                 HttpServletRequest request,
                                 HttpServletResponse response) {

        CheckFileForm checkForm = (CheckFileForm) form;
        if ("POST".equals(request.getMethod())) {
            FormFile file = checkForm.getFile();

            ActionErrors errors = new ActionErrors();
            if ("".equals(file.getFileName())) {
                errors.add("file", new ActionMessage("file.missing"));
            } else if (! file.getFileName().endsWith(".java")) {
                errors.add("file", new ActionMessage("invalid.file"));
            }
            if (errors.size() != 0) {
                saveErrors(request, errors);
                return mapping.getInputForward();    
            }

            FileWriter fw = null;
            InputStream is = null;
            String tmpFile = new File(getServlet().getServletContext().getInitParameter("tmpDir"),
                                    file.getFileName()).getAbsolutePath();
            try {
                fw = new FileWriter(new File(tmpFile));
            } catch (IOException e) {
                e.printStackTrace();
            }

            try {
                is = new BufferedInputStream(file.getInputStream());
                byte[] b = new byte[4096];
                int readSize = is.read(b);
                do {
                    fw.write(new String(b), 0, readSize);
                    readSize = is.read(b);
                } while (readSize != -1);
                fw.close();
            } catch (IOException e) {
                e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
            }
            String selectedConfig = ((CheckFileForm) form).getSelectedConfig();
            try {
                String csErrors = checkstyleFile(tmpFile, selectedConfig);
                request.setAttribute("errors", csErrors);
            } catch (CheckstyleException e) {
                e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
            }
            return mapping.findForward("home");
        } else {
            String[] configFiles = getStandardConfigFiles();
            ((CheckFileForm) form).setAllConfigs(configFiles);
            if (configFiles.length != 0) {
                ((CheckFileForm) form).setSelectedConfig(configFiles[0]);
            }
            return mapping.getInputForward();
        }
    }

    private String checkstyleFile(String tmpFile, String config) throws CheckstyleException {
        StringWriter out = new StringWriter();
        final Configuration csConfig = ConfigurationLoader.loadConfiguration(config,
                    new PropertiesExpander(System.getProperties()));
        final AuditListener listener = new DefaultLogger(new WriterOutputStream(out, "UTF-8"), false);
        final List<File> files = new ArrayList<File>();
        files.add(new File(tmpFile));
        Checker c = null;
        try {
            c = new Checker();

            final ClassLoader moduleClassLoader =
                Checker.class.getClassLoader();
            c.setModuleClassLoader(moduleClassLoader);
            c.configure(csConfig);
            c.addListener(listener);
        }
        catch (final Exception e) {
            System.out.println("Unable to create Checker: "
                               + e.getMessage());
            e.printStackTrace(System.out);
            System.exit(1);
        }

        final int numErrs = c.process(files);
        c.destroy();
        return "<pre>" + out.getBuffer().toString() + "</pre>";
    }

    private String[] getStandardConfigFiles() {
        String csDir = getServlet().getServletContext().getInitParameter("customRulesDir");
        FileFilter filter = new FileFilter() {
            public boolean accept(File f) {
                return f.getName().endsWith(".xml");
            }
        };
        File[] matchedFiles = new File(csDir).listFiles(filter);
        String[] toReturn = new String[matchedFiles.length];
        for (int i = 0; i < matchedFiles.length; i++) {
            File matchedFile = matchedFiles[i];
            toReturn[i] = matchedFile.getAbsolutePath();
        }
        return toReturn;
    }
}
