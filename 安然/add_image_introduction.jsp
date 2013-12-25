<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
	<head>
	   <title>酒店图片介绍</title>
	  
	</head>
	<body>
	<form action="../ImageServlet?type=addImage" method="post">			
	    <table border="0" rules="none" width="85%"align="center">
	  	<tr bgcolor="#afdfe4" height="40">
	  		<th>酒店编号</th>
	  		<th>图片</th>
	  		<th>图片名称</th>
	  		<th>操作</th>
	  	</tr>
	  	<tr align="center" bgcolor="#cde6c7" height="60">
	  		
	  		
	  	  <td><input type="text" name="hotel_no"/></td>
	      <td>
	         <input type="file" name="image"/>
	      </td>
	      <td><input type="text" name="image_name"/></td>
	      
	  		<td><input type="reset" value="重置"/><input type="submit" value="提交"/></td>
	  	</tr>
	  </table>
	  </form>
	</body>
	
</html>