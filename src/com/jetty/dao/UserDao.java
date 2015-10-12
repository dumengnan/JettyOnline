package com.jetty.dao;

import com.jetty.beans.User;  

  
public interface UserDao extends BaseDao {  
	// 登录验证，如果失败返回null
		public User loginCheck(String name, String password);
  //  public void saveObject(Object obj) throws HibernateException; 
		
		public User regUser(String username, String password,String company,int gender);
}  