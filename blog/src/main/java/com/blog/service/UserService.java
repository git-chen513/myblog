package com.blog.service;

import com.blog.pojo.User;

/**
 * @Author Baker.chen
 */
public interface UserService {

    /**
     * 根据用户名和密码查询用户
     * @param username
     * @param password
     * @return
     */
    User checkUser(String username, String password);
}
