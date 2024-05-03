package com.example.m3l13_beastie.service;

import com.example.m3l13_beastie.entity.User;
import com.example.m3l13_beastie.repository.UserRepository;

import java.util.List;

public class UserService {

    UserRepository userRepository = new UserRepository();

    public void printAllUsersToConsole(){
        System.out.println(userRepository.getAllUsers());
    }

    public void printUserToConsoleById(Integer id){
        System.out.println(userRepository.getUserById(id));
    }

    public List<User> getAllUsers() {
        return userRepository.getAllUsers();
    }

    public User getUserById(Integer id) {
        return userRepository.getUserById(id);
    }

    public User updateUser(Integer id, String newLogin, String newPassword){
        userRepository.updateUser(id, newLogin, newPassword);
        return userRepository.getUserById(id);
    }

}
