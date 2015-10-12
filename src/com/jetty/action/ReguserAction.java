package com.jetty.action;

import java.util.HashMap;

import org.json.JSONObject;

import com.jetty.beans.User;
import com.jetty.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class ReguserAction extends ActionSupport{  
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserService  userService;  
	private HashMap<String, Object> regUserDataMap;
	private String jsonString;
	
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

	public String getJsonString() {
		return jsonString;
	}

	public void setJsonString(String v) {
		this.jsonString = v;
	}
	
	public HashMap<String, Object> getDataMap() {
		return regUserDataMap;
	}
	public ReguserAction(){
		regUserDataMap = new HashMap<String, Object>();
	}


	
	public String execute() throws Exception{
		
		String username =null;
		String password=null;
		String company=null;
		int gender=0;

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
		
		User user = userService.register(username, password,company,gender);
		
		
	return null;
	}
}
