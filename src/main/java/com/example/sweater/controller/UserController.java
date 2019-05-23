package com.example.sweater.controller;

import com.example.sweater.domain.Message;
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
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

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
        model.addAttribute("partner",user.getFriend1());

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
    public String getFriends(
            Model model,
            @AuthenticationPrincipal User user,
            @RequestParam (required = false, defaultValue = "",name = "id") String username
    ) {

        if (!username.equals("") && username != null){
            user.setFriend1(username);
            userRepo.save(user);
        }



        User user1 = userRepo.findByUsername(user.getUsername());
        model.addAttribute("username", user.getUsername());
        model.addAttribute("id",user.getId());
        model.addAttribute("isAdmin",user.isAdmin());

        Iterable <User> users = userRepo.findAll();

        Set<User> subsR = user1.getSubscribers();
        Set<User> subsS = user1.getSubscriptions();

        Set<User> friends = new HashSet<>();



        for (User s : subsS) {
            if (s.getSubscriptions().contains(user1)){
                friends.add(s);
            }
        }


        model.addAttribute("users",subsS);
        model.addAttribute("usersr",subsR);

        model.addAttribute("friends", friends);
        model.addAttribute("partner",user1.getFriend1());

        return "friends";
    }

    @GetMapping("/user_list_all")
    public String messages(
            Model model,
            @RequestParam(required = false, defaultValue = "") String filter,
            @AuthenticationPrincipal User user
    ){
        Iterable <Message> messages = messageRepo.findAll();
        Iterable <User> users = userRepo.findAll();
        User userFind;

        if (filter != null && !filter.isEmpty()) {
            userFind = userRepo.findByUsername(filter);
            model.addAttribute("find",userFind);
        } else {
            model.addAttribute("find",null);
        }


        model.addAttribute("messages",messages);
        model.addAttribute("users",users);


        return "user_list_all";
    }

    @GetMapping("subscribe/{user}")
    public String subscribe (
            @PathVariable User user,
            @AuthenticationPrincipal User currentUser
    ) {
        User user1 = userRepo.findByUsername(currentUser.getUsername());
        userService.subscribe(user1,user);
        return "redirect:/user/profile";
    }

    @GetMapping("partner_msg")
    public String messages(
            Model model,
            @AuthenticationPrincipal User currentUser
    ){

        if (currentUser.getFriend1() != null){
            User friend = userRepo.findByUsername(currentUser.getFriend1());
            List<Message> messageList = messageRepo.findByAuthor(friend);



            model.addAttribute("messages",messageList);
        }

   //     Iterable <Message> messages = messageRepo.findAll();

  //      model.addAttribute("messagelist",messageList);

        return "partner_msg";
    }




}
