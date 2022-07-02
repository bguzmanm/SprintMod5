package org.sustantiva.modelos;

import org.springframework.stereotype.Service;
import org.sustantiva.repositorios.FilmRepo;

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
public class FilmServiceImpl implements FilmService {

    private final FilmRepo filmRepo;

    public FilmServiceImpl(FilmRepo filmRepo) {
        this.filmRepo = filmRepo;
    }

    @Override
    public void create(Film f) {
        filmRepo.save(f);
    }

    @Override
    public List<Film> read() {
        return filmRepo.findAll();
    }

    @Override
    public Film read(int film_id) {
        return filmRepo.findById(film_id).orElse(null);
    }

    @Override
    public void update(Film f) {
        filmRepo.save(f);
    }

    @Override
    public void delete(int film_id) {
        filmRepo.deleteById(film_id);
    }
}
