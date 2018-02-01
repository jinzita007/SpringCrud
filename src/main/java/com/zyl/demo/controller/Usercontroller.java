package com.zyl.demo.controller;

import com.zyl.demo.domain.User;
import com.zyl.demo.mapper.UserMapper;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private SqlSession sqlSession;

    @RequestMapping("/")
    public String index() {
        User user1 = userMapper.findByStatus("0");
        User user2 = sqlSession.selectOne("findByStatus","0");
        System.out.println(user1);
        System.out.println(user2);

        return "Greetings from Spring Boot!";

    }

}
