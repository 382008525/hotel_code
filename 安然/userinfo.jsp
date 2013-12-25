<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.model.User"%>
<html>
	<head>
	   <title>个人信息</title>
	</head>
	<body>
		<table border="0" align="center"width="70%"height="400">
		<jsp:useBean id="user" class="com.model.User"></jsp:useBean>
		<%
		      user = (User)session.getAttribute("user");
		%>
			<tr>
				<td>
				   &nbsp;&nbsp;
	         用&nbsp;户&nbsp;名:<%=user.getLoginname() %>
	     
	      </td>
	    </tr> 
	    <tr>   
	      <td>
	         &nbsp;&nbsp;
	         真实姓名：<%=user.getUsername() %>
	    
	      </td>
	    </tr>
	    <tr>    
	      <td>
	         &nbsp;&nbsp;
	        <a href="repassword.jsp"> 修改密码</a>
	   
	      </td>
	    </tr>
	    <tr>    
	      <td>
	         &nbsp;&nbsp;
	         年&nbsp;&nbsp;&nbsp;&nbsp;龄：<%=user.getAge() %>
	   
	      </td>
	    </tr>
	    <tr>    
	      <td> 
	         &nbsp;&nbsp;
	         性&nbsp;&nbsp;&nbsp;&nbsp;别：<%=user.getGender() %>
	   
	      </td>
	    </tr>
	    <tr>    
	      <td>
	         &nbsp;&nbsp;
	         身份证号：<%=user.getID() %>
	   
	      </td>
	    </tr>
	    <tr>    
	      <td>
	         &nbsp;&nbsp;
	         住&nbsp;&nbsp;&nbsp;&nbsp;址：<%=user.getAddress() %>
	       
	      </td>
	    </tr>
	    <tr>
	      <td>
	         &nbsp;&nbsp;
	         电&nbsp;&nbsp;&nbsp;&nbsp;话：<%=user.getTelephone() %>
	
	      </td>
	   </tr>
	 </table>
	</body>
	
</html>