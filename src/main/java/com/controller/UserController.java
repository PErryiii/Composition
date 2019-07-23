package com.controller;

import com.pojo.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/UT")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/userLogin")
    public String userLogin(User user){
        User user1 = userService.userGet(user.getUserAccount());
        if(user.getUserPassword().equals(user1.getUserPassword())){
            return "redirect:/UT/userList";
        }
        else {
            return "redirect:/index.jsp";
        }
    }

    @RequestMapping("/userList")
    public String userList(Model model){
        List<User> users = userService.userList();
        model.addAttribute("users", users);
        return "userList";
    }

    @RequestMapping("/toUserAdd")
    public String toUserAdd(){
        return "userAdd";
    }

    @RequestMapping("/userAdd")
    public String userAdd(User user){
        userService.userAdd(user);
        return "redirect:/UT/userList";
    }

    @RequestMapping("/toUserEdit")
    public String toUserEdit(Model model, String userAccount) {
        model.addAttribute("user", userService.userGet(userAccount));
        return "userEdit";
    }

    @RequestMapping("/userEdit")
    public String userEdit(User user) {
        userService.userEdit(user);
        return "redirect:/UT/userList";
    }

    @RequestMapping("/toUserDel")
    public String toUserDel(Model model, String userAccount) {
        model.addAttribute("user", userService.userGet(userAccount));
        return "userDel";
    }

    @RequestMapping("/userDel")
    public String userDel(User user) {
        userService.userDel(user);
        return "redirect:/UT/userList";
    }
}
