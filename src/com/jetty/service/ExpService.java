package com.jetty.service;

import java.util.HashMap;

/**
 * Created by mee on 15-12-21.
 */
public interface ExpService {
     HashMap<String, Object> getPageindex();

     HashMap<String, Object> getContent(String name);

}
