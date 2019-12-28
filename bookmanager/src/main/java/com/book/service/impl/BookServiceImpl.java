package com.book.service.impl;

import com.book.mapper.BookMapper;
import com.book.model.Book;
import com.book.model.BookSub;
import com.book.service.IBookService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class BookServiceImpl implements IBookService {

    @Autowired
    private BookMapper bookMapper;

    /**
     * 查询图书列表
     * @param map
     * @return
     */
    @Override
    public Map<String, Object> queryBookList(Map<String, Object> map) {
        //当前页
        int pageNum = Integer.parseInt(map.get("pageNum").toString());
        //每页几条记录
        int pageSize = Integer.parseInt(map.get("pageSize").toString());
        //使用分页插件
        PageHelper.startPage(pageNum,pageSize);

        List<Book> bookList = bookMapper.queryBookList(map);

        PageInfo pageInfo = new PageInfo(bookList);
        long total = pageInfo.getTotal();
        Map<String, Object> resultMap = new HashMap<>();

        resultMap.put("total",total);
        resultMap.put("rows",bookList);

        return resultMap;
    }

    /**
     * 借阅图书
     * @param map
     */
    @Override
    public void addSubBook(Map<String, Object> map) {
        bookMapper.addSubBook(map);
    }

    /**
     * 添加图书
     * @param map
     */
    @Override
    public void addBook(Map<String, Object> map) {
        bookMapper.addBook(map);
    }

    /**
     * 编辑图书
     * @param map
     */
    @Override
    public void editBook(Map<String, Object> map) {
        bookMapper.editBook(map);
    }

    /**
     * 删除图书
     * @param map
     */
    @Override
    public void delBook(Map<String, Object> map) {
        bookMapper.delBook(map);
    }

    /**
     * 归还图书
     * @param map
     */
    @Override
    public void returnSubBook(Map<String, Object> map) {
        bookMapper.returnSubBook(map);
    }

    /**
     * 查看借阅图书列表
     * @param map
     * @return
     */
    @Override
    public Map<String, Object> querySub(Map<String, Object> map) {
        List<BookSub> bookSubList = bookMapper.querySub(map);
        Map<String ,Object> resultMap = new HashMap<>();
        resultMap.put("rows",bookSubList);

        return resultMap;
    }

    /**
     * 更新库存信息
     * @param map
     */
    @Override
    public void updateInventories(Map<String, Object> map) {
        bookMapper.updateInventories(map);
    }


}
