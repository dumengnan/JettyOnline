package com.jetty.action;

import com.jetty.service.UserService;
import org.json.JSONObject;

/**
 * Created by mee on 15-10-23.
 */
public class NewPasswordAction {



    private UserService userService;
    private int newpass_return;

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    public UserService getUserService() {
        return userService;
    }
    public int renewpassword(String jsonString) throws Exception{
        String username;
        String newpass;

        try{
            JSONObject jsonObject = new JSONObject(jsonString);
            username = jsonObject.getString("username");
            newpass = jsonObject.getString("password");   //取出json数据中的username和password参数
            System.out.println("username : "+ username+" "+"newpass: "+newpass);
        }catch(Exception e){
            System.out.println(e);
            e.printStackTrace();
            throw e;
        }
       newpass_return =  userService.renewpass(username,newpass);

        return newpass_return;
    }
}
