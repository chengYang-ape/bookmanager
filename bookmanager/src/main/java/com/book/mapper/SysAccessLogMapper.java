package com.book.mapper;

import java.util.List;
import java.util.Map;

/**
 *日志持久层接口
 */

public interface SysAccessLogMapper {

    //保存日志
    public int saveSysLog(Map<String ,Object> map);

    //根据时间段查看日志列表
    public List<Map<String ,Object>> querySysLogList(Map<String ,Object> map);
}
