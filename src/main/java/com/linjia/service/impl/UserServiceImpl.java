package com.linjia.service.impl;

import com.linjia.dao.UserDao;
import com.linjia.domain.User;
import com.linjia.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public List<User> findAll() {
        List<User> list = userDao.findAll();

        return list;
    }

    @Override
    public void saveUser(User user) {
        userDao.saveUser(user);
        System.out.println("保存");
    }

    @Override
    public int findOne(User user) {
        int one = userDao.findOne(user);
        return one;
    }
}
