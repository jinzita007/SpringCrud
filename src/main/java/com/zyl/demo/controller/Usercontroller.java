package com.zyl.demo.controller;

import com.zyl.demo.domain.User;
import com.zyl.demo.mapper.UserMapper;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

public class UserController {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private SqlSession sqlSession;

    @RequestMapping("/")
    public String index() {
       // User user1 = userMapper.findById(1);
        User user2 = sqlSession.selectOne("findById","1");
        //System.out.println(user1);
        System.out.println(user2);

        return "Greetings from Spring Boot!";

    }

}
