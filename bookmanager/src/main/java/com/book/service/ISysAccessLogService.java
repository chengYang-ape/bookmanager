package com.book.service;

import java.util.Map;

public interface ISysAccessLogService {

    //保存日志
    public int saveSysLog(Map<String ,Object> map);

    //根据时间段查看日志列表
    public Map<String,Object> querySysLogList (Map<String,Object> map);
}
