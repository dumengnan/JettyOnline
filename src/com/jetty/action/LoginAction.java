package com.jetty.action;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.jetty.beans.User;
import com.jetty.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{  
	  
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserService userService;  
  
    public void setUserService(UserService userService) {
		this.userService = userService;
	}
	//动作方法
	public String  execute() throws Exception{
		String username =null;
		String password = null;
		HttpServletRequest request=ServletActionContext.getRequest();
		 Enumeration<String> nas = request.getParameterNames();
		 while(nas.hasMoreElements()){
	           String name = nas.nextElement();
	           if("username".equals(name))
	           {
	        	   String value = request.getParameter("username");
	        	   username = value;
	           }
	           if("password".equals(name))
	           {
	        	   String value = request.getParameter("password");
	        	   password = value; 
	           }
		 }
	   System.out.println(username+"   "+password);
		User user = userService.login(username, password);	//调用业务方法login
		//如果user为空，则登录失败
		if (user == null) {
			return "fail";
		} else {
			//request.getSession().setAttribute(Constants.SESSION_USER, user);
				return "success";
		}
	}
}  
