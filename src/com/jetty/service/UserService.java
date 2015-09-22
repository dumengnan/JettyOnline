package com.jetty.service;

import com.jetty.beans.User;

public interface UserService {  
  
   // public void regUser(User user);  
	public User login(String username, String password);
  
}  