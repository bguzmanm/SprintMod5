package org.sustantiva.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.sustantiva.modelos.FilmService;

/**
 * SprintMod5
 * org.sustantiva.controladores
 *
 * @author Brian Guzmán M.
 * @version 0.1
 * @since 01-07-22
 */
@Controller
@RequestMapping(path = "/films")
public class FilmController {

    private final FilmService filmService;

    public FilmController(FilmService filmService) {
        this.filmService = filmService;
    }


    @GetMapping
    public String listFilms(Model model){

        model.addAttribute("films", filmService.read());
        return "listFilms";

    }

}
