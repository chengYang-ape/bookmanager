package com.book.service;

import java.util.Map;

public interface IBookService {

    //查询图书列表
    Map<String ,Object> queryBookList(Map<String ,Object> map);

    //借阅图书
    void addSubBook(Map<String ,Object> map);

    //新增图书
    void addBook(Map<String ,Object> map);

    //编辑图书
    void editBook(Map<String ,Object> map);

    //删除图书
    void delBook(Map<String ,Object> map);

    //归还图书
    void returnSubBook(Map<String ,Object> map);

    //借阅图书列表
    Map<String,Object> querySub(Map<String ,Object> map);

    //更新库存信息
    void updateInventories(Map<String ,Object> map);

}
