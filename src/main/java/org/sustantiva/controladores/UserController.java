package org.sustantiva.controladores;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.sustantiva.modelos.User;
import org.sustantiva.modelos.UserService;

import java.security.SecureRandom;

/**
 * SprintMod5
 * org.sustantiva.controladores
 *
 * @author Brian Guzmán M.
 * @version 0.1
 * @since 02-07-22
 */
@Controller
public class UserController {

    private final UserService us;

    public UserController(UserService us) {
        this.us = us;
    }


    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String listUsers(){


        return "user";
    }



    @RequestMapping(value = "/users", method = RequestMethod.POST)
    public String createUser(@RequestParam("username") String username, @RequestParam("password") String password){
    //public String createUser(){

        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(10, new SecureRandom());

        User u = new User(username, encoder.encode(password), true);
        // validar BCrypt
        //System.out.println(encoder.matches(password, "$2a$16$X0x841FVjA1r8774rdOtaeT72UNbirReM2aW54ZgyLa6qc8a8Y.9O"));

        us.create(u);



        return "index";
    }

}
