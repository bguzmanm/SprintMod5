package org.sustantiva.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.sustantiva.modelos.Film;

/**
 * SprintMod5
 * org.sustantiva.repositorios
 *
 * @author Brian Guzmán M.
 * @version 0.1
 * @since 01-07-22
 */
public interface FilmRepo extends JpaRepository<Film, Integer> {
}
