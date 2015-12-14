package com.jetty.daoImpl;

import com.jetty.beans.Lecture;
import com.jetty.dao.LectureDao;

import java.util.HashMap;
import java.util.List;

/**
 * Created by mee on 15-12-14.
 */
public class LectureDaoImpl extends BaseDaoImpl implements LectureDao{
    @Override
    public HashMap<String, String> getlecture(int pageid) {
        HashMap<String,String> lectureData = new HashMap<String,String>();
        String hql = "from Lecture where pageid = ?";
        String server_info = AcquireServerInfo();
        try{
            List<Lecture> lectuureList = (List<Lecture>) this.getHibernateTemplate().find(hql, pageid);
            for(Lecture lecture:lectuureList){
                lectureData.put("title",lecture.getLecturetitle());
                lectureData.put("ppt","http://" + server_info + "/binary?opt=get&name="+lecture.getLecturename()+".ppt");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return lectureData;
    }
}
