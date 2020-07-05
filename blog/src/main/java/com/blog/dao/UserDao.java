package com.blog.dao;

import com.blog.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * @Author Baker.chen
 */
@Mapper
@Repository
public interface UserDao {

    /**
     * 根据用户名和密码查询用户
     * @param username
     * @param password
     * @return
     */
    User queryByUsernameAndPassword(@Param("username") String username, @Param("password") String password);
}
