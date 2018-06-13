package spin.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import spin.entity.Contact;

import static org.springframework.web.bind.annotation.RequestMethod.*;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import javax.validation.Valid;

@Controller
public class HomeController {

    private static final String Mastering_Spring_MVC_4_pdf = "Mastering_Spring_MVC_4.pdf";
    private static final String Spring_in_Action_4th_Edition_pdf = "Spring_in_Action_4th_Edition.pdf";

    @Autowired
    private ServletContext servletContext;

    @Autowired
    private DataSource dataSource;
    
    @RequestMapping(value = { "/", "/home", "/home/" }, method = GET)
    public ModelAndView home(HttpServletRequest request) {
        
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = dataSource.getConnection();
            System.out.println(con.getSchema());
            ps.close();
            ps = con.prepareStatement("select id, name, review from phone2");
            rs = ps.executeQuery();
            while (rs.next()) {
                System.out.print(rs.getInt("id")+", ");
                System.out.print(rs.getString("name")+", ");
                System.out.print(rs.getString("review"));
                System.out.println();
            }
        }catch(Exception e) {
            e.printStackTrace();
        }finally {
            if(con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
            if(ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
            if(rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        }
        
        ModelAndView mv = new ModelAndView("home", "contact", new Contact());
        mv.addObject("baseUrl", servletContext.getContextPath());
        return mv;
    }

    @RequestMapping(value = { "/home/wistron", "/home/wistron/" }, method = GET)
    public ModelAndView homeWistron(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView("home_wistron", "contact", new Contact());
        mv.addObject("baseUrl", servletContext.getContextPath());
        return mv;
    }

    @RequestMapping(value = "/addContact", method = RequestMethod.POST)
    public String submit(@Valid @ModelAttribute("contact") Contact contact, BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            System.out.println("erros");
            return "error";
        }
        System.out.println(contact.toString());
        return "redirect:/home";
    }

    @RequestMapping(value = "/download/{type}", method = RequestMethod.GET)
    public void downloadPdf(HttpServletResponse response, @PathVariable("type") String type) throws IOException {

        File file = null;

        ClassLoader classloader = Thread.currentThread().getContextClassLoader();
        if (type.equalsIgnoreCase("Mastering_Spring_MVC_4")) {
            file = new File(classloader.getResource(Mastering_Spring_MVC_4_pdf).getFile());
        } else if (type.equalsIgnoreCase("Spring_in_Action_4th_Edition")) {
            file = new File(classloader.getResource(Spring_in_Action_4th_Edition_pdf).getFile());
        }

        if (!file.exists()) {
            String errorMessage = "Sorry. The file you are looking for does not exist";
            System.out.println(errorMessage);
            OutputStream outputStream = response.getOutputStream();
            outputStream.write(errorMessage.getBytes(Charset.forName("UTF-8")));
            outputStream.close();
            return;
        }

        String mimeType = URLConnection.guessContentTypeFromName(file.getName());
        if (mimeType == null) {
            System.out.println("mimetype is not detectable, will take default");
            mimeType = "application/octet-stream";
        }

        System.out.println("mimetype : " + mimeType);

        response.setContentType(mimeType);

        /*
         * "Content-Disposition : inline" will show viewable types [like
         * images/text/pdf/anything viewable by browser] right on browser while
         * others(zip e.g) will be directly downloaded [may provide save as popup, based
         * on your browser setting.]
         */
        response.setHeader("Content-Disposition", String.format("inline; filename=\"" + file.getName() + "\""));

        /*
         * "Content-Disposition : attachment" will be directly download, may provide
         * save as popup, based on your browser setting
         */
        // response.setHeader("Content-Disposition", String.format("attachment;
        // filename=\"%s\"", file.getName()));

        response.setContentLength((int) file.length());

        InputStream inputStream = new BufferedInputStream(new FileInputStream(file));

        // Copy bytes from source to destination(outputstream in this example), closes
        // both streams.
        FileCopyUtils.copy(inputStream, response.getOutputStream());
    }
}