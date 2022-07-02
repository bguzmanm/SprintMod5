package org.sustantiva.modelos;

import org.springframework.stereotype.Service;

import java.util.List;

/**
 * SprintMod5
 * org.sustantiva.modelos
 *
 * @author Brian Guzmán M.
 * @version 0.1
 * @since 02-07-22
 */
@Service
public interface UserService {
    public void create(User u);
    public List<User> read();
    public Film read(String username);
    public void update(User u);
    public void delete(String username);
}
