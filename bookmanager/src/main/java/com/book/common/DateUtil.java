package com.book.common;


import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 功能描述;时间工具类
 */
public class DateUtil {
    /**
     * 返回字符串形式的当前日期
     */
    public static String getCurrentDateStr(String pattern){
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
        String currentDateStr = simpleDateFormat.format(new Date());
        return currentDateStr;
    }
}
