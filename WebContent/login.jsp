<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Login</title>
<script type="text/javascript" src="./jquery.js"></script>
<script type="text/javascript">
    $(function(){
        $("#submit").click(function(){
            var loginName1 = $("input[name='username']").val();    //获取账号
            var password1 = $("input[name='password']").val();        //获取密码
 
            var jsonUser = {username:loginName1, password:password1};    //JSON对象
            //jsonUser.toString()这种方法错误,javaScript中的toString是用于布尔型变的,
            var strUser = JSON.stringify(jsonUser);    //将JSON对象转变成JSON格式的字符串,
         
            var data = {jsonString:strUser};
            
            	$.ajax({
            		     type:"POST",
            		     datatype:"json",
            	         data:JSON.stringify(data),
            		     url:"login",
            		    contentType:"application/json",
            		    success:function(result){
            		    	alert('user    '+  result['user']['username'] + ' login success ');
            		    }	
            		 });
        });    
        $("#register").click(function(){
        	window.location.href="register.jsp";
        });
    });
</script>
</head>

<body>
<form action="/login" method="post">
    账号<input type="text" name="username"/><br/>
    密码<input type="password" name="password"><br/>
    <input type="button" id="submit" value="登录"/>
        <input type="button" id="register" value="注册"/>
</form>
</body>
</html>