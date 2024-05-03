package com.example.m3l13_beastie.repository;

import com.example.m3l13_beastie.entity.User;

import java.util.Arrays;
import java.util.List;

public class UserRepository {

    private static List<User> users = Arrays.asList(
            new User(1L, "Tony Soprano", "qwerty"),
            new User(2L, "Dr. Jennifer Melfi", "12345"),
            new User(3L, "Corrado \"Junior\" Soprano", "oldButGold"),
            new User(4L, "Christopher Moltisanti", "09987654321"),
            new User(5L,  "Paulie \"Walnuts\" Gualtieri", "whereIsMy50K"));

    // CRUD

    public List<User> getAllUsers() {
        return users;
    }

    public User getUserById(Integer id) {
        return users.get(id - 1);
    }

    public User updateUser(Integer id, String newLogin, String newPassword) {
         users.get(id - 1).setLogin(newLogin);
         users.get(id - 1).setPassword(newPassword);
         return users.get(id - 1);
    }
}
