package com.jetty.action;

import java.util.HashMap;

import com.jetty.beans.User;
import com.jetty.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

import org.json.JSONObject;

public class LoginAction extends ActionSupport{  
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserService userService;  
	private HashMap<String, Object> dataMap;
	private String jsonString;

	public String getJsonString() {
		return jsonString;
	}

	public void setJsonString(String jsonString) {
		this.jsonString = jsonString;
	}

	public HashMap<String, Object> getDataMap() {
		return dataMap;
	}

	public LoginAction(){
		dataMap = new HashMap<String, Object>();
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	//动作方法
	public String  execute() throws Exception{
		String username =null;
		String password = null;
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
	    
		dataMap.clear();
		User user2 = new User();
		
		User user = userService.login(username, password);	//调用业务方法login
		//如果user为空，则登录失败
		if (user == null) {
			dataMap.put("success", false);
			return SUCCESS;
		} else {
			user2.setUsername(username);
			user2.setPassword(password);
			dataMap.put("user", user2);
			dataMap.put("success", true);
			
			//request.getSession().setAttribute(Constants.SESSION_USER, user);
			return SUCCESS;
		}
	}
}  
