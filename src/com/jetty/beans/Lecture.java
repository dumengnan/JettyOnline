package com.jetty.beans;

/**
 * Created by mee on 15-12-14.
 */
public class Lecture {
    private int id;
    private int pageid;
    private String lecturetitle;
    private String lecturename;

    public String getLecturetitle() {
        return lecturetitle;
    }

    public void setLecturetitle(String lecturetitle) {
        this.lecturetitle = lecturetitle;
    }

    public int getPageid() {
        return pageid;
    }

    public void setPageid(int pageid) {
        this.pageid = pageid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public String getLecturename() {
        return lecturename;
    }

    public void setLecturename(String lecturename) {
        this.lecturename = lecturename;
    }
}
