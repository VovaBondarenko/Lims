package Lims.data_base.service.impl;

import Lims.data_base.entity.Users;
import Lims.data_base.repository.UsersRepository;
import Lims.data_base.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Service
@Transactional
public class UsersServiceImpl implements UsersService {

    @Autowired
    private UsersRepository usersRepository;


    @Override
    public Users addUser(Users user) {
        return usersRepository.saveAndFlush(user);
    }


    @Override
    public void deleteUser(int userId) {

    }

    @Override
    public Users editUser(Users user) {
        return null;
    }

    @Override
    public List<Users> getAllUser() {
        List<Users> users =usersRepository.findAll();
        return  users;
    }
}
