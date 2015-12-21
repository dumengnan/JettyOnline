package com.jetty.action;

import com.jetty.service.ExpService;
import com.opensymphony.xwork2.ActionSupport;

import java.util.HashMap;

/**
 * Created by mee on 15-12-21.
 */
public class PractiseAction extends ActionSupport{

    private ExpService expService;//用奖体检服务
    private String opt=null;      //操作类型
    private String name=null; //产品名称
    private int userid= -1;
    private int page=0;
    public HashMap<String,Object> data1Map;
    public HashMap<String,Object> data2Map;


    /**
     *
     */
    //private static final long serialVersionUID = 1L;
    private final String LIST="list";
    private final String RESULT="result";

    public void setExpService(ExpService expService) {
        this.expService = expService;
    }

    public String getOpt() {
        return opt;
    }

    public void setOpt(String opt) {
        this.opt = opt;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String execute() throws Exception{
        if(opt.equals("get"))
        {
            if(page==1)
            {
                data1Map=expService.getPageindex();
                page=0;
                //System.out.println(data1Map);
                return LIST;
            }

            if((name!=null))
            {
                System.out.println(name);
                data2Map=expService.getContent(name);
                name=null;
                System.out.println(data2Map);
                return RESULT;
            }

        }
        if(opt.equals("add"))
        {
            if(userid!=-1||name!=null)
                return SUCCESS;
        }
        return ERROR;
    }
}
