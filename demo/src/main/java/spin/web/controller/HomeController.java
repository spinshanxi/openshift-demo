package spin.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import spin.entity.Contact;

import static org.springframework.web.bind.annotation.RequestMethod.*;

import javax.validation.Valid;

@Controller
public class HomeController {

    @RequestMapping(value = { "/", "/home" }, method = GET)
    public ModelAndView home() {
        return new ModelAndView("home", "contact", new Contact());
    }

    @RequestMapping(value = { "/wistron", "/wistron/", "/home/wistron", "/home/wistron/" }, method = GET)
    public ModelAndView homeWistron() {
        return new ModelAndView("home_wistron", "contact", new Contact());
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
}