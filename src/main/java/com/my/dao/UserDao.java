package com.my.dao;

import com.my.entity.User;

import java.util.List;

public interface UserDao {
    List<User> queryUsers();
}
