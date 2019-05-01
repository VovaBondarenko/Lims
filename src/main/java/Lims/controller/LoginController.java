package Lims.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Locale;

@Controller
public class LoginController {

    @Qualifier("messageSource")
    @Autowired
    private MessageSource msg;

    @RequestMapping(value = {"/", "/login"}, method = RequestMethod.GET)
    public String login(@RequestParam(value = "error", required = false) String error, ModelMap model) {
        if (error != null) {
//            model.addAttribute("error", msg.getMessage("user",null,Locale.forLanguageTag().getDisplayLanguage()));
        }
        return "login";
    }
}
