package org.sustantiva.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * SprintMod5
 * org.sustantiva.controladores
 *
 * @author Brian Guzmán M.
 * @version 0.1
 * @since 01-07-22
 */
@Controller
@RequestMapping(path = "/")
public class InicioController {

    @GetMapping
    public String inicio(){
        return "index";
    }

}
