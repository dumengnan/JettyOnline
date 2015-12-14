package com.jetty.service;

import com.jetty.beans.User;

public interface UserService {  
  
   // public void regUser(User user);  
	 int login(String username, String password);
  
	 int register(String username, String password,String company,int gender);

	 int renewpass(String username, String newpass);

}  