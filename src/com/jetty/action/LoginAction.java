package com.jetty.action;

import com.jetty.beans.User;
import com.jetty.service.UserService;

import java.util.HashMap;

import org.json.JSONObject;

public class LoginAction{  

	private UserService userService;  

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	//动作方法
	public  HashMap<String, Object>  login(String jsonString) throws Exception{
		String username =null;
		String password = null;
		
		HashMap<String, Object> loginMap = new HashMap<String, Object>();
		
		//HttpServletRequest request=ServletActionContext.getRequest();	
	    try{
	    	JSONObject jsonObject = new JSONObject(jsonString);
    	    username = jsonObject.getString("username");
		    password = jsonObject.getString("password");   //取出json数据中的username和password参数
         System.out.println("username : "+ username+" "+"password: "+password);	
	    }catch(Exception e){
	    	System.out.println(e);
	    	e.printStackTrace();
	    	throw e;
	    }
	    
		loginMap.clear();
	
		User user = userService.login(username, password);	//调用业务方法login
		//如果user为空，则登录失败
		if (user == null) {
			loginMap.put("success", false);
			return loginMap;
		} else {
			loginMap.put("success", true);
			return loginMap;
			//request.getSession().setAttribute(Constants.SESSION_USER, user);
		}
	}
}  
