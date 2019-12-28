package com.book.common;

import java.util.UUID;

/**
 * 生成ID的工具类
 */
public class IDUtil {


    /**
     * 获取uuid（去掉'-'字符）
     * @return
     */
    public static String getUUID(){
        return UUID.randomUUID().toString().replace("-","");
    }

}
