package com.controller;

import com.pojo.Manager;
import com.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/UT")
public class ManagerController {
    @Autowired
    ManagerService managerService;

    @RequestMapping("/managerLogin")
    public String managerLogin(Manager manager){
        if (managerService.managerLogin(manager).equals(1)){        /*登录成功*/
            return "redirect:/UT/userList";
        } else{                                                     /*登录失败*/
            return "redirect:/index.jsp";
        }
    }
}
