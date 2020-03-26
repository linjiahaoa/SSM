package com.linjia.controller;

import com.linjia.domain.User;
import com.linjia.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/findAll")
    public String findAll(Model model){
        List<User> userlist = userService.findAll();
        model.addAttribute("userlist",userlist);
        return "ChatRoom";
    }

    @RequestMapping("/save")
    @ResponseBody
    public String save(User user, HttpServletRequest request, HttpServletResponse response) throws IOException {
      try{
          userService.saveUser(user);
         return "1";
      }catch (Exception e){
          return "0";
      }

    }

    @RequestMapping("/login")
    @ResponseBody
    public String findOne(User user,Model model){
        int a=userService.findOne(user);
        if(a==1){
            return "1";
        }else {
            return "0";
        }

    }

   @RequestMapping("/mytest")
   @ResponseBody
    public String mytest(){

        return "ok";
    }
}
