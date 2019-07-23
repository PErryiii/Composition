package com.service.impl;

import com.dao.UserDao;
import com.pojo.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public List<User> userList() {
        return userDao.userList();
    }

    @Override
    public User userGet(String userAccount) {
        return userDao.userGet(userAccount);
    }

    @Override
    public Integer userAdd(User user) {
        return userDao.userAdd(user);
    }

    @Override
    public Integer userEdit(User user) {
        return userDao.userEdit(user);
    }

    @Override
    public Integer userDel(User user) {
        return userDao.userDel(user);
    }
}
