package com.linjia.dao;

import com.linjia.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao  {

//    查找所有
//    @Select("select * from user")
    public List<User> findAll();

//    保存用户
//    @Insert("insert into user(uid,uname,upwd,ulevel) values(#{uid},#{uname},#{upwd},#{ulevel})")
    public void  saveUser(User user);

    //查询用户登陆
    public int findOne(User user);

}
