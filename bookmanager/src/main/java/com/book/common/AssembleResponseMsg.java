package com.book.common;




import com.book.model.InfoMsg;
import com.book.model.ResponseBody;


/**
 * 功能描述：封装ResponseBody内容
 */
public class AssembleResponseMsg {
    /**
     * 成功返回内容
     */
    public <T> ResponseBody success(T data){
        ResponseBody<T> resp = new ResponseBody<T>();
        resp.setData(data);
        InfoMsg info = new InfoMsg();
        resp.setInfo(info);
        return resp;
    }

    /**
     * 返回失败/异常内容
     */
    public <T>ResponseBody failure(int status, String errorCode, String message){
        ResponseBody<T> resp = new ResponseBody<T>();
        resp.setStatus(status);
        InfoMsg info = new InfoMsg();
        info.setCode(errorCode);
        info.setMessage(message);
        resp.setInfo(info);
        return resp;
    }

}
