package Lims.controller;

import Lims.data_base.service.impl.Exp1ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MenuController {

    @Qualifier("exp1ServiceImpl")
    @Autowired
    private Exp1ServiceImpl exp;

    @RequestMapping(value = {"/menu"}, method = RequestMethod.GET)
    public String getMenu(ModelMap model) {
        model.addAttribute("exp",exp.getAllExp());
        return "menu";
    }


//    @RequestMapping(value = {"/menu/{id}/"},method = RequestMethod.POST)
//    public String getName(@PathVariable("id") int id){
//        return "menu";
//    }



}
