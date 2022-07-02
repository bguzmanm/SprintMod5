package org.sustantiva.modelos;

import org.springframework.stereotype.Service;

import java.util.List;

/**
 * SprintMod5
 * org.sustantiva.modelos
 *
 * @author Brian Guzmán M.
 * @version 0.1
 * @since 01-07-22
 */
@Service
public interface FilmService {

    public void create(Film f);
    public List<Film> read();
    public Film read(int film_id);
    public void update(Film f);
    public void delete(int film_id);

}
