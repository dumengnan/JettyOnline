package com.jetty.action;

import com.jetty.service.LectureService;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.lang3.ObjectUtils;

import java.util.HashMap;

/**
 * Created by mee on 15-12-10.
 */
public class GetLectureAction extends ActionSupport{
    private int page;
    private String opt;

    private LectureService lectureService;

    public String getOpt() {
        return opt;
    }

    public void setOpt(String opt) {
        this.opt = opt;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public LectureService getLectureService() {
        return lectureService;
    }

    public void setLectureService(LectureService lectureService) {
        this.lectureService = lectureService;
    }
    public HashMap<String,String> lectureDataMap = new HashMap<String,String>();
    public String getLecture() throws Exception{

        if(opt.equals("get") && page > 0){
            lectureDataMap = lectureService.getlectureinfo(page);
            if(lectureDataMap.isEmpty())
                return ERROR;
            else
                return SUCCESS;
        }

        return ERROR;
    }
}
