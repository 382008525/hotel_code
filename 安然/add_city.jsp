<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
	<head>
	   <title>城市表</title>
	  
	</head>
	<body>
	<form action="../CityServlet?type=addCity" method="post">				
	    <table border="0"rules="none" width="85%"align="center">
	  	<tr bgcolor="#afdfe4" height="40">
	  		<th>城市编号</th>
	  		<th>城市名称</th>
	  		<th>操作</th>
	  	</tr>
	  	<tr align="center"bgcolor="#cde6c7" height="60">
	  		
	  		
	  		<td><input type="text" name="city_no"/></td>
	  		<td><input type="text" name="city_name"/></td>
	  		<td><input type="reset" value="重置"/><input type="submit" value="提交"/></td>
	  	</tr>
	  </table>
	  </form>
	</body>
	
</html>