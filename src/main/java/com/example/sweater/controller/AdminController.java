package com.example.sweater.controller;

import com.example.sweater.domain.Message;
import com.example.sweater.repos.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

    @Autowired
    private MessageRepo messageRepo;

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/admin_messages")
    public String messages(Model model   ){
        Iterable <Message> messages = messageRepo.findAll();
        model.addAttribute("messages",messages);


        return "admin_messages";
    }
}
