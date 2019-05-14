package com.example.sweater.controller;

import com.example.sweater.domain.Role;
import com.example.sweater.domain.User;
import com.example.sweater.repos.MessageRepo;
import com.example.sweater.repos.UserRepo;
import com.example.sweater.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.Map;

@Controller
@RequestMapping("/user")

public class UserController {

    @Autowired
    private UserRepo userRepo;

    @Value("${upload.path}")
    private String uploadPath;

    @Autowired
    private MessageRepo messageRepo;

    @Autowired
    private UserService userService;

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping
    public String userList(Model model) {
        model.addAttribute("users", userService.findAll());
        return "userList";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("{user}")
    public String userEditForm(@PathVariable User user, Model model) {
        model.addAttribute("user", user);
        model.addAttribute("roles", Role.values());
        // my test

        return "userEdit";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @PostMapping
    public String userSave(
            @RequestParam String username,
            @RequestParam Map<String, String> form,
            @RequestParam("userId") User user
    ) {

        userService.saveUser(user, username, form);

        return "redirect:/user";
    }

    @GetMapping("profile")
    public String getProfile(Model model, @AuthenticationPrincipal User user) {
        User user1 = userRepo.findByUsername(user.getUsername());
        model.addAttribute("username", user.getUsername());
        model.addAttribute("email", user.getEmail());
        model.addAttribute("pic",user1.getProfilePicture());
        model.addAttribute("id",user.getId());
        model.addAttribute("isAdmin",user.isAdmin());

        return "profile";
    }

    @PostMapping("profile")
    public String updateProfile(
            @AuthenticationPrincipal User user,
            @RequestParam String password,
            @RequestParam String email,
            @RequestParam("filepic") String pic
    ) throws IOException {
        userService.updateProfile(user, password, email, pic);




        return "redirect:/user/profile";
    }

    @GetMapping("friends")
    public String getFriends(Model model, @AuthenticationPrincipal User user) {
        User user1 = userRepo.findByUsername(user.getUsername());
        model.addAttribute("username", user.getUsername());
        model.addAttribute("id",user.getId());
        model.addAttribute("isAdmin",user.isAdmin());
        Iterable <User> users = userRepo.findAll();
        model.addAttribute("users",users);
       // Iterable<User> friends = user.getFriends();
   //     model.addAttribute("friends",user.getFriends());
    //    model.addAttribute("friends",user.getFriendsRequests());
        return "profile";
    }



}
