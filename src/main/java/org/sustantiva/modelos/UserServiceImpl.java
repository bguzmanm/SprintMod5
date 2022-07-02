package org.sustantiva.modelos;

import org.springframework.stereotype.Service;
import org.sustantiva.repositorios.UserRepo;

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
public class UserServiceImpl implements UserService {


    private final UserRepo ur;

    public UserServiceImpl(UserRepo ur) {
        this.ur = ur;
    }


    @Override
    public void create(User u) {
        ur.save(u);
    }

    @Override
    public List<User> read() {
        return null;
    }

    @Override
    public Film read(String username) {
        return null;
    }

    @Override
    public void update(User u) {

    }

    @Override
    public void delete(String username) {

    }
}
