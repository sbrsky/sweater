package com.example.sweater.controller;

import com.example.sweater.domain.Message;
import com.example.sweater.domain.User;
import com.example.sweater.repos.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/film")
public class FilmController {

    @Autowired
    private MessageRepo messageRepo;

    @GetMapping
    public String film(){
        return "film";
    }

    @PostMapping
    public String add (
            @RequestParam String text,
            @RequestParam String tag,
            @RequestParam String image,
            @AuthenticationPrincipal User user,
            Model model
    ){
        Message message = new Message(text,tag,user);
        message.setFilename(image);
        messageRepo.save(message);
        return "redirect:/main";
    }
}
