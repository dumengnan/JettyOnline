<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Register</title>
<script type="text/javascript" src="./jquery.js"></script>
<script type="text/javascript">
    $(function(){
        $("#submit").click(function(){
        	console.log("hello world");
            var loginName1 = $("input[name='username']").val();    //获取账号
            var password1 = $("input[name='password']").val();        //获取密码
            var company1 = $("input[name='company']").val(); 
 			var gender1 = document.getElementById("select").value;
            
 			if(gender1 == '男')
 				gender2 = 1;
 			else
 				gender2 = 0;
 			
            console.log(gender2);
            console.log(company1);
            
            var jsonUser = {username:loginName1, password:password1,gender:gender2,company:company1};    //JSON对象
            //jsonUser.toString()这种方法错误,javaScript中的toString是用于布尔型变的,
            var strUser = JSON.stringify(jsonUser);    //将JSON对象转变成JSON格式的字符串,
         
            var data = {jsonString:strUser};
            
            	$.ajax({
            		     type:"POST",
            		     datatype:"json",
            	         data:JSON.stringify(data),
            		     url:"userlog?type=reguser",
            		    contentType:"application/json;charset=UTF-8",
            		    success:function(results){
            		    	var parsedJson =  $.parseJSON(results);
            		    	alert(results.name);
            		    }
            		 });
        });    
    });
</script>
</head>
<body>
<form action="/reguser" method="post">
    账号<input type="text" name="username"/><br/>
    密码<input type="password" name="password"><br/>
     性别 <select name="select" id = "select">
  <option value="男">男</option>
  <option value="女">女</option>
  </select><br/>
    公司<input type="text" name="company"/><br/>
    <input type="button" id="submit" value="提交"/>
</form>
</body>
</html>