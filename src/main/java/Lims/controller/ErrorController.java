package Lims.controller;

import Lims.data_base.entity.Users;
import Lims.data_base.service.UsersService;
import Lims.data_base.service.impl.UsersServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;


@Controller
public class ErrorController {


    @Qualifier("usersServiceImpl")
    @Autowired
    private UsersServiceImpl usersService;


    @Qualifier("usersServiceImpl")
    @Autowired
    private UsersService us;

    private Users test =new Users();

    @RequestMapping(value = {"/error1"},method = RequestMethod.GET)
    public String error(ModelMap model){
        model.addAttribute("login.error","access denied");
        model.addAttribute("e1","access efefdenied");
        model.addAttribute("e2","access denied");


        System.out.println("start create object---------------------------------");
        Users test =new Users();
        test.setUsername("tesfsgsfgsfdgsgdtsg12sfgef2sdf");
        test.setPassword("tesfgsgst1fsgfsdf2");
        test.setEnabled((byte) 1);
//        test.setId(100);

        System.out.println(test.getUsername());
        System.out.println(test.getPassword());
        System.out.println(test);
        System.out.println("end create object---------------------------------");

        usersService.addUser(test);
//        us.addUser(test);
        System.out.println("start create add db---------------------------------");

//        usersService.addUser(test);

        System.out.println("end create add db---------------------------------");
        List<Users> users=us.getAllUser();
        System.out.println(users.toString());
        System.out.println("----------------------------------------------");
        for (Users  user:users){
            System.out.println("user--------"+user.getUsername()+"------------password--------------------"+user.getPassword());
        }


//        model.addAttribute("error",entityManager.createQuery("select username from users").getFirstResult());
        return "errorTest";
    }

}
