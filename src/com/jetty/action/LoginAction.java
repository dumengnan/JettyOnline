package com.jetty.action;

import com.jetty.beans.User;
import com.jetty.common.Constants;
import com.jetty.service.UserService;

import java.util.HashMap;

import org.apache.struts2.ServletActionContext;
import org.json.JSONObject;

import javax.servlet.http.HttpServletRequest;

public class LoginAction{  

	private UserService userService;  

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	//动作方法
	public  int  login(String jsonString) throws Exception{
		String username =null;
		String password = null;
		int login_return;
		
		HashMap<String, Object> loginMap = new HashMap<String, Object>();
		
		HttpServletRequest request= ServletActionContext.getRequest();
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
	
		login_return = userService.login(username, password);	//调用业务方法login
		if(login_return <= 0){
			request.setAttribute("msg","login failed");
		}else
			request.getSession().setAttribute(Constants.SESSION_USER, username);

		System.out.println("login_result "+ login_return);

		return login_return;
	}
}  
