<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<title>注册</title>
	<script type="text/javascript">
	    function check()
	    {
	    	var loginname = document.getElementsByName("loginname")[0];
	    	var password = document.getElementsByName("password")[0];
	    	var repassword = document.getElementsByName("repassword")[0];

	    	if(loginname.value == "")
	    	{
	    		alert("用户名不能为空");
	    		return;
	    	}
	    	else if(loginname.value.length < 4 || loginname.value.length > 12)
	    	{
	    		alert("用户名长度需大于4位小于12位");
	    		return;
	    	}
	    	
	    	if(password.value == "")
	    	{
	    		alert("密码不能为空");
	    		return;
	    	}
	    	else if(password.value.length < 6 || password.value.length >12)
	    	{
	    		alert("请输入6到12位密码");
	    		return;
	    	}
	    	
	    	if(repassword.value != password.value)
	    	{
	    		alert("两次输入密码不一样，请重新输入");
	    		return;
	    	}
	    	document.form1.submit();
	    }
	</script>
	</head>
	
	<body>
			<form action="UserServlet?type=userRegister" method="post" name="form1">
				<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
					<tr>
						<th height="40" colspan="2" bgcolor="#FFFFFF" class="f12b-red" style="font-size: 18px;">
							注册
						</th>
					</tr>
					<tr>
						<td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							用户名：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="loginname" id="loginname"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							密码：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="password" name="password" onchange="check();" />
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;"> 
							确认密码： 
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="password" name="repassword"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;"> 
							真实姓名： 
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="username"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;"> 
							性别： 
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="radio" name="gender" value="男" checked="checked"/>男 
							&nbsp;&nbsp;&nbsp;&nbsp; 
							<input type="radio" name="gender" value="女"/>女
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;"> 
							年龄： 
						</td>
						<td bgcolor="#FFFFFF">
						    &nbsp;
							<input type="text" name="age"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;"> 
							地址： 
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="address"/>
						</td>
					</tr>
					
						<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;"> 
							身份证号码： 
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="ID"/>
						</td>
					</tr>
					
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;"> 
							电话号码： 
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="telephone"/>
						</td>
					</tr>
					<tr>
						
						
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9">
							&nbsp;
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="submit" value="提交" onclick="check();"/>
							<input type="reset" value="重置" onclick="javascript:window.location.href=window.location.href;" />
						</td>
					</tr>
				</table>
			</form>
	</body>
</html>
