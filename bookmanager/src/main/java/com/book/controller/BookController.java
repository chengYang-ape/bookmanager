package com.book.controller;

import com.book.common.AssembleResponseMsg;
import com.book.model.ResponseBody;
import com.book.service.IBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * 图书控制层
 */

@RestController
public class BookController {

    @Autowired
    private IBookService bookService;

    /**
     * 查看图书列表
     * @param map
     * @return
     */
    @RequestMapping(value = "/queryBookList",produces = "application/json;charset=utf-8")
    public ResponseBody queryBookList(@RequestBody Map<String ,Object> map){
        Map<String,Object> resultMap = bookService.queryBookList(map);
        return new AssembleResponseMsg().success(resultMap);
    }

    /**
     * 借阅图书
     * @param map
     * @return
     */
    @RequestMapping(value = "/addSubBook",produces = "application/json;charset=utf-8")
    public ResponseBody addSubBook(@RequestBody Map<String ,Object> map){
        try {
            bookService.addSubBook(map);
            return new AssembleResponseMsg().success("OK");
        }catch (Exception e){
            return new AssembleResponseMsg().failure(200,"error","借阅失败");
        }

    }

    /**
     * 添加书籍
     * @param map
     * @return
     */
    @RequestMapping(value = "/addBook",produces = "application/json;charset=utf-8")
    public ResponseBody addBook(@RequestBody Map<String ,Object> map){
        try {
            bookService.addBook(map);
            return new AssembleResponseMsg().success("OK");
        }catch (Exception e){
            return new AssembleResponseMsg().failure(200,"error","添加失败");
        }
    }

    /**
     * 编辑书籍
     * @param map
     * @return
     */
    @RequestMapping(value = "/editBook",produces = "application/json;charset=utf-8")
    public ResponseBody editBook(@RequestBody Map<String ,Object> map){
        try {
            bookService.editBook(map);
            return new AssembleResponseMsg().success("OK");
        }catch (Exception e){
            return new AssembleResponseMsg().failure(200,"error","编辑失败");
        }
    }

    /**
     * 删除图书
     * @param map
     * @return
     */
    @RequestMapping(value = "/delBook",produces = "application/json;charset=utf-8")
    public ResponseBody delBook(@RequestBody Map<String ,Object> map){
        try {
            bookService.delBook(map);
            return new AssembleResponseMsg().success("OK");
        }catch (Exception e){
            return new AssembleResponseMsg().failure(200,"error","删除失败");
        }
    }

    /**
     * 归还图书
     * @param map
     * @return
     */
    @RequestMapping(value = "/returnSubBook",produces = "application/json;charset=utf-8")
    public ResponseBody returnSubBook(@RequestBody Map<String ,Object> map){
        try {
            bookService.returnSubBook(map);
            return new AssembleResponseMsg().success("OK");
        }catch (Exception e){
            return new AssembleResponseMsg().failure(200,"error","归还图书失败");
        }
    }

    /**
     * 查看借阅图书列表
     * @param map
     * @return
     */
    @RequestMapping(value = "/querySub",produces = "application/json;charset=utf-8")
    public ResponseBody querySub(@RequestBody Map<String ,Object> map){
        Map<String,Object> resultMap = bookService.querySub(map);
        return new AssembleResponseMsg().success(resultMap);
    }

    /**
     * 更新库存
     * @param map
     * @return
     */
    @RequestMapping(value = "/updateInventories",produces = "application/json;charset=utf-8")
    public ResponseBody updateInventories(@RequestBody Map<String ,Object> map){
        bookService.updateInventories(map);
        return new AssembleResponseMsg().success("OK");
    }



}
