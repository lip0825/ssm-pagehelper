package com.my.web;

import com.github.pagehelper.PageInfo;
import com.my.entity.Page;
import com.my.entity.User;
import com.my.sevice.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    @Qualifier("userServiceImpl")
    private UserService userService;
    @GetMapping("/users")
    public String queryUsers(Model model,Page page){
        PageInfo<User> pageInfo = userService.queryUsers(page);
        model.addAttribute("data",pageInfo);
        return "userPro";
    }
}
