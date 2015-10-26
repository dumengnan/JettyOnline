package com.jetty.service;

import com.jetty.beans.User;

public interface UserService {  
  
   // public void regUser(User user);  
	public int login(String username, String password);
  
	public int register(String username, String password,String company,int gender);

	public int renewpass(String username, String newpass);

}  