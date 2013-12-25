<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
	<head>
	   <title>密码修改</title>
	</head>
	<body>
	<form action="UserServlet?type=passwordUpdate" method="post">		
	 <table border="0" align="center"height="200" >
	   <tr>
	   	<td height="100"></td>
	   </tr>
	   <tr>
	   	<td>
	   	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;原密码：<input type="password" name="password" size="30" maxlength="22">
	   	  <br><br>
	   	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新密码：<input type="password" name="newpassword" size="30" maxlength="22">
	   	  <br><br>
	   	  再次输入新密码：<input type="password" name="newpassword" size="30" maxlength="22">
	   	  <br><br>
	   	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="保存">
	   	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="取消">
	   	</td>
	   </tr>	
	 </table>
	 </form>
	</body>
	
</html>