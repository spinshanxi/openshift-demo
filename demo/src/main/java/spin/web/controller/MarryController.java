package spin.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import spin.model.Invitation;
import spin.service.InvitationService;

import static org.springframework.web.bind.annotation.RequestMethod.*;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
public class MarryController {

    @Autowired
    private ServletContext servletContext;
    
    @Autowired
    private InvitationService invitationService;

    @RequestMapping(value = { "/marry", "/marry/" }, method = GET)
    public ModelAndView marry(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView("marry", "invitation", new Invitation());
        mv.addObject("baseUrl", servletContext.getContextPath());
        return mv;
    }

    @RequestMapping(value = "/submitInvitation", method = RequestMethod.POST)
    public String submit(@Valid @ModelAttribute("invitation") Invitation invitation, BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            System.out.println(result.getAllErrors());
            return "/marry";
        }
        System.out.println(invitation.toString());
        invitationService.saveInvitationQuestionnaire(invitation);
        return "redirect:/marry";
    }
}