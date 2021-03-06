package com.zyl.demo.mapper;

import com.zyl.demo.domain.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface UserMapper {
    @Select("SELECT * FROM users WHERE status = #{status}")
    User findByStatus(@Param("status") String status);
}
