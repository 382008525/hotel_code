<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.service.CityServlet"%>
<%@ page import="com.model.City"%>
<html>
	<head>
	   <title>地区表</title>
	  
	</head>
	<body>
	<form action="../AreaServlet?type=addArea" method="post">				
	    <table border="0"rules="none" width="85%"align="center">
	  	<tr bgcolor="#afdfe4" height="40">
	  		<th>地区编号</th>
	  		<th>地区名称</th>
	  		<th>城市编号</th>
	  		<th>操作</th>
	  	</tr>
	  	<tr align="center"bgcolor="#cde6c7" height="60">
	  		
	  		<td><input type="text" name="area_no"/></td>
	  		<td><input type="text" name="area_name"/></td>
	  		<td>
	  		<%
	  		     List<City> list = CityServlet.getCity();
	  		%>
	  		 <select name="city">
	  		 <%
	  		    for(int i = 0;i <list.size();i++)
	  		    {
	  		 %>
	  		    <option value="<%=list.get(i).getCity_no()%>"><%=list.get(i).getCity_name()%></option>
	  		    <%} %>
	  		 </select>
	  		</td>
	  		<td><input type="reset" value="重置"/><input type="submit" value="提交"/></td>
	  	</tr>
	  </table>
	  </form>
	</body>
	
</html>