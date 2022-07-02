package org.sustantiva.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.sustantiva.modelos.User;
import org.sustantiva.modelos.UserService;

/**
 * SprintMod5
 * org.sustantiva.controladores
 *
 * @author Brian Guzmán M.
 * @version 0.1
 * @since 02-07-22
 */
@Controller
@RequestMapping("/users")
public class UserController {

    private final UserService us;

    public UserController(UserService us) {
        this.us = us;
    }


    @GetMapping
    public String listUsers(){
        return "user";
    }



    @PostMapping
    public String createUser(@RequestParam("username") String username, @RequestParam("password") String password){

        User u = new User(username, password, true);

        us.create(u);

        return "redirect:/users";
    }

}
