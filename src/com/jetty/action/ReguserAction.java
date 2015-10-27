package com.jetty.action;

import java.util.HashMap;

import org.json.JSONObject;

import com.jetty.beans.User;
import com.jetty.service.UserService;

public class ReguserAction {  

	private UserService  userService;  

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	
	public  int  reguser(String jsonString) throws Exception{
		
		String username =null;
		String password=null;
		String company=null;
		int gender=0;
		int register_return;
		
		HashMap<String, Object> reguserMap = new HashMap<String, Object>();
		
		try{	
			JSONObject jsonObject = new JSONObject(jsonString);
			username = jsonObject.getString("username");
			password = jsonObject.getString("password");
			company = jsonObject.getString("company");
			gender=jsonObject.getInt("gender");
	   		System.out.println("username : "+ username+" password: "+password+" company:"+company+" gender "+gender);
		}catch(Exception e){
	    	System.out.println(e);
	    	e.printStackTrace();
	    	throw e;
	    }
		
		register_return = userService.register(username, password,company,gender);

		return register_return;

	}
}
