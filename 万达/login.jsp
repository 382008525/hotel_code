<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.service.UserServlet" %>
<html>
	<head>
		<title>登陆</title>
		<script type="text/javascript">
               function check() 
               {
            	   var loginname = document.getElementsByName("loginname")[0];
            	   var password = document.getElementsByName("password")[0];
            	   var repassword = document.getElementsByName("repassword")[0];

            	   if (loginname.value == "") 
            	   {
            		   alert("用户名不能为空");
            		   return;
            	   } else if (loginname.value.length < 4 || loginname.value.length > 12) 
            	   {
            		   alert("用户名长度需大于4位小于12位");
            		   return;
            	   }

            	   if (password.value == "") 
            	   {
            		   alert("密码不能为空");
            		   return;
            	   } else if (password.value.length < 6 || password.value.length > 12) 
            	   {
            		   alert("请输入6到12位密码");
            		   return;
            	   }
               }
           </script>
	</head>
	<body>
	      <form action="UserServlet?type=userLogin" name="ThisForm" method="post">
			<table border="1" width="100%" align="center" height="50%"
				bordercolor="#3333FF" frame="void">
				<tr>
					<td width="50%" align="left">
						<img src="image/4.jpg" width="100%" height="100%">
					</td>
					<td width="900" align="center" valign="center">
						账&nbsp;&nbsp;号:
						<input type="text" name="loginname" size="30" maxlength="22">
						<br>
						<br>
						密&nbsp;&nbsp;码:
						<input type="password" name="password" size="30" maxlength="11">
						<br>
						<br>
						验证码:
						<input type="text" name="Mobile" size="30" maxlength="10">
						<br>
						<br>
						<input type="submit" value="登录" onclick="check();">
					</td>
				</tr>
			</table>
			</form>
	</body>

</html>