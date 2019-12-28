package com.book.service;

import com.book.model.User;

import java.util.List;
import java.util.Map;

/**
 * 功能描述:用户业务层接口
 */
public interface IUserService {

    //查询用户列表
    Map<String,Object> queryUserList(Map<String ,Object> map);

    //查询用户
    int queryUser(Map<String,Object> map);

    //新增用户
    void addUser(Map<String ,Object> map);

    //根据用户名更新用户信息
    void updateUser(Map<String ,Object> map);

    //根据id更新用户信息
    void updateUserById(Map<String ,Object> map);

    //根据用户名删除用户信息
    void delUser(Map<String ,Object> map);

    //修改用户密码
    void updateUserPass(Map<String ,Object> map);
}
