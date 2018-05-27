package spin.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.*;

@Controller
@RequestMapping({ "/resume", "/resume/", "/resume/en", "/resume/en/" })
/**
 * 
 * @author Spin
 *
 */
public class ResumeController {

    @RequestMapping(method = GET)
    public String resumeTw() {
        return "resume_en";
    }

    @RequestMapping(value = { "/tw", "/tw/" }, method = GET)
    public String resumeEn() {
        return "resume_tw";
    }

    @RequestMapping(value = { "/skill", "/skill/", "/skill/tw", "/skill/tw/" }, method = GET)
    public String resumeSkillTw() {
        return "resume_skill_tw";
    }
    
    @RequestMapping(value = { "/skill/en", "/skill/en/" }, method = GET)
    public String resumeSkillEn() {
        return "resume_skill_en";
    }
}
