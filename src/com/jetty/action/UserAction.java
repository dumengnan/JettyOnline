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
		private ReguserAction reguserAction;
		public String jsonString;
		
		public ReguserAction getReguserAction() {
			return reguserAction;
		}

		public void setReguserAction(ReguserAction reguserAction) {
			this.reguserAction = reguserAction;
		}

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

		public String Def() throws Exception {
			System.out.println(type);
			System.out.println(jsonString);
			int register_result;
			int login_result;

			dataMap.clear();

			if (type != null && type.equals("login")) {//调用登录接口部分
				login_result =loginAction.login(jsonString);

				switch (login_result){
					case -1:
						return "nouser";
					case -2:
						return "errorpass";
					case 0:
						return ERROR;
					default:
						dataMap.put("userid",login_result);
						return SUCCESS;
				}

			} else if (type != null && type.equals("reguser")) {//调用注册接口部分
				register_result = reguserAction.reguser(jsonString);
				if (register_result > 0)//注册成功
				{
					dataMap.put("userid", register_result);
					return SUCCESS;
				} else if (register_result == -3) {
					return "invalid";//用户名重复
				} else
					return ERROR;
			}
			else
				return ERROR;

		}
	
}
