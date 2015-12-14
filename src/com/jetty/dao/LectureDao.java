package com.jetty.dao;

import java.util.HashMap;

/**
 * Created by mee on 15-12-14.
 */
public interface LectureDao extends BaseDao{
    HashMap<String,String> getlecture(int pageid);
}
