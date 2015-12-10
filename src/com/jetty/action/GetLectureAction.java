package com.jetty.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by mee on 15-12-10.
 */
public class GetLectureAction extends ActionSupport{
    private String opt;
    private int page;

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


}
