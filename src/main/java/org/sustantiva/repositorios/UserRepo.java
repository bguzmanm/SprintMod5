package org.sustantiva.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.sustantiva.modelos.User;

/**
 * SprintMod5
 * org.sustantiva.repositorios
 *
 * @author Brian Guzmán M.
 * @version 0.1
 * @since 02-07-22
 */
@Repository
public interface UserRepo extends JpaRepository<User, String> {
}
