package com.jetty.action;

import java.util.HashMap;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction  extends ActionSupport{
		/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
		private String type;
		public HashMap<String, Object> dataMap = new HashMap<String, Object>();
		private LoginAction loginAction;
		public String jsonString;

		public String getJsonString() {
			return jsonString;
		}

		public void setJsonString(String jsonString) {
			this.jsonString = jsonString;
		}
		
		public String getType() {
			return type;
		}

		public void setType(String type) {
			this.type = type;
		}
		public LoginAction getLoginAction() {
			return loginAction;
		}

		public void setLoginAction(LoginAction loginAction) {
			this.loginAction = loginAction;
		}

		public String Def() throws Exception{
			System.out.println(type);
			System.out.println(jsonString);
			if(type != null && type.equals("login"))
			{
					dataMap = loginAction.login(jsonString);
			}
			return SUCCESS;
		}
	
}
