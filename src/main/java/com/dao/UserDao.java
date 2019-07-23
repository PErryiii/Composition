package com.dao;

import com.pojo.User;

import java.util.List;

public interface UserDao {
    List<User> userList();
    User userGet(String UserAccount);
    Integer userAdd(User user);
    Integer userEdit(User user);
    Integer userDel(User user);
}
