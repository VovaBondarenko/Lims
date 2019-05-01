package Lims.data_base.service;

import Lims.data_base.entity.Users;

import java.util.List;

/**
 * Created by Вова on 15.03.2016.
 */
public interface UsersService {

    Users addUser(Users user);
    void deleteUser(int userId);
    Users editUser(Users user);
    List<Users> getAllUser();
}
