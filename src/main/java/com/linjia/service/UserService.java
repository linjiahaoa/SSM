package com.linjia.service;

import com.linjia.domain.User;

import java.util.List;

public interface UserService {
    //    查找所有
    public List<User> findAll();

    //    保存用户
    public void  saveUser(User user);
    //查询一个用户
    public int findOne(User user);
}
