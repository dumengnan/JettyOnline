package com.jetty.action;

import java.util.HashMap;

import com.jetty.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class ReguserAction extends ActionSupport{  
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserService  userService;  
	private HashMap<String, Object> regUserDataMap;
	private String regUserString;
	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public HashMap<String, Object> getRegUserDataMap() {
		return regUserDataMap;
	}

	public void setRegUserDataMap(HashMap<String, Object> regUserDataMap) {
		this.regUserDataMap = regUserDataMap;
	}

	public String getRegUserString() {
		return regUserString;
	}

	public void setRegUserString(String regUserString) {
		this.regUserString = regUserString;
	}


	
	public String execute() throws Exception{
	System.out.println("hello user");
	return null;
	}
}
