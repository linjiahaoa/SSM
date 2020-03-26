package com.linjia.util;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.defaults.DefaultSqlSessionFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.*;

@Configuration

public class SpringConfiguratin {


    public SpringConfiguratin(){
        System.out.println("容器被初始化");
    }


}
