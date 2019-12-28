package com.book.aspect;

import com.book.common.IDUtil;
import com.book.common.StringUtil;
import com.book.controller.SysAccessLogController;
import com.book.service.ISysAccessLogService;
import org.aspectj.lang.JoinPoint;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 功能描述：系统访问日志切面类
 */
@Component
public class SysAccessLogAspect {

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private ISysAccessLogService sysAccessLogService;

    //访问时间
    private Date accessDate;

    //日志信息Map
    private Map<String ,Object> logMap = new HashMap<>();

    //访问类
    private Class clazz;

    /**
     * 前置通知
     * @param joinPoint
     */
    public void doBefore(JoinPoint joinPoint){

        clazz = joinPoint.getTarget().getClass();
        if(clazz != SysAccessLogController.class){

            //日志ID
            logMap.put("logId", IDUtil.getUUID());

            //请求url
            String url = request.getRequestURI().toString();
            logMap.put("accessInterface",url);

            //请求Id
            String ip = request.getRemoteAddr();
            logMap.put("accessIp",ip);

            //请求方式
            String requestType = request.getMethod();
            logMap.put("requestType",requestType);

            //访问的时间
            accessDate = new Date();
            logMap.put("accessDate",accessDate);

            //方法的参数
            String args = Arrays.toString(joinPoint.getArgs());
            logMap.put("interfaceParams",args);

            //访问的浏览器信息
            String browserSystemInfo = StringUtil.getBrowserSystemInfo(request);
            logMap.put("accessSource",browserSystemInfo);


        }

    }


    /**
     * 后置通知
     * @param joinPoint
     */
    public void doAfter(JoinPoint joinPoint){

        if(clazz != SysAccessLogController.class){

            //执行时长
            long executeTime = new Date().getTime()-accessDate.getTime();
            logMap.put("executeTime",executeTime);
            sysAccessLogService.saveSysLog(logMap);

        }

    }


}
