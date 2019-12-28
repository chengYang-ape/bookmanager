package com.book.service.impl;

import com.book.mapper.SysAccessLogMapper;
import com.book.service.ISysAccessLogService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class SysAccessLogImpl implements ISysAccessLogService {

    @Autowired
    private SysAccessLogMapper sysAccessLogMapper;

    /**
     * 保存日志
     * @param map
     * @return
     */
    @Override
    public int saveSysLog(Map<String, Object> map) {
        return sysAccessLogMapper.saveSysLog(map);

    }

    /**
     * 根据时间段查看日志列表
     * @param map
     * @return
     */
    @Override
    public Map<String, Object> querySysLogList(Map<String, Object> map) {
        //当前页
        int pageNum = Integer.parseInt(map.get("pageNum").toString());
        //每页信息数量
        int pageSize = Integer.parseInt(map.get("pageSize").toString());
        //使用分页工具分页
        PageHelper.startPage(pageNum,pageSize);
        List<Map<String, Object>> resultList = sysAccessLogMapper.querySysLogList(map);
        PageInfo pageInfo = new PageInfo(resultList);
        //总条数
        long total = pageInfo.getTotal();
        Map<String,Object> resultMap = new HashMap<>();
        resultMap.put("total",total);
        resultMap.put("rows",resultList);
        return resultMap;
    }
}
