package Lims.controller;

import Lims.data_base.entity.Exp1;
import Lims.data_base.service.UsersService;
import Lims.data_base.service.impl.Exp1ServiceImpl;
import Lims.data_base.service.impl.UsersServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Vova on 27.03.2016.
 */
@Controller
public class Group2Controller {

    @Qualifier("usersServiceImpl")
    @Autowired
    private UsersServiceImpl usersService;
//    private UsersService us;


    @Qualifier("exp1ServiceImpl")
    @Autowired
    private Exp1ServiceImpl exp;


    @RequestMapping(value = {"/group2"},method = RequestMethod.GET)
    public String getGroup2(ModelMap model){
        model.addAttribute("users",usersService.getAllUser());
        model.addAttribute("exp",exp.getAllExp());
        return "group2";
    }


    @RequestMapping(value = {"/group2"},method = RequestMethod.POST)
    public String addExperiments(@RequestParam(value = "param1") String par1,
                                 @RequestParam(value = "param2") String par2,
                                 @RequestParam(value = "param3") String par3, ModelMap model){

        System.out.println("--------------------------------");
        exp.addExperiments(addExpModel(par1,par2,par3));
        System.out.println("-----------end---------------------");
        return "redirect:/group2";
    }

    private Exp1 addExpModel(String param1,String param2,String param3){
        Exp1 exp=new Exp1();
        exp.setMaterial1(param1);
        exp.setMaterial2(param2);
        exp.setMaterial3(param3);
        exp.setUser("admin");
        System.out.println("result---"+exp.getMaterial1()+exp.getMaterial2()+exp.getMaterial3());
        return exp;
    }

}
