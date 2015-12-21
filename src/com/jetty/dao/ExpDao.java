package com.jetty.dao;

import java.util.HashMap;

/**
 * Created by mee on 15-12-21.
 */
public interface ExpDao extends BaseDao{
     HashMap<String, Object> getPageindex();
     HashMap<String,Object> getContent(String name);
}
