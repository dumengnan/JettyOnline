package com.jetty.serviceImpl;

import com.jetty.dao.LectureDao;
import com.jetty.service.LectureService;

import java.util.HashMap;

/**
 * Created by mee on 15-12-14.
 */
public class LectureServiceImpl implements LectureService{
    private LectureDao lectureDao;

    public LectureDao getLectureDao() {
        return lectureDao;
    }

    public void setLectureDao(LectureDao lectureDao) {
        this.lectureDao = lectureDao;
    }


    @Override
    public HashMap<String, String> getlectureinfo(int pageid) {
        return lectureDao.getlecture(pageid);
    }
}
