<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.service.CityServlet"%>
<%@ page import="com.model.City"%>
<html>
	<head>
	   <title>城市表</title>
	   <script type="text/javascript">
	      function deleteCity(city_no)
	      {
	    	   if(confirm('您确定删除吗？'))
               {
                   window.location.href="../CityServlet?type=deleteCity&city_no="+city_no;
               }
	      }
	   </script>
	</head>
	<body>
	<jsp:useBean id="city" class="com.model.City"></jsp:useBean>
	<%
	     List<City> list = CityServlet.getCity();
	%>
	    <table border="0"rules="none" width="85%"align="center">
	  	
	  	<tr bgcolor="#afdfe4" height="40">
	  		
	  		<th>城市编号</th>
	  		<th>城市名称</th>
	  		<th>操作</th>
	  	</tr>
	  	<%
	  	     for(int i = 0;i < list.size();i++)
	  	     {
	  	    	 city = list.get(i);
	  	%>
	  	<tr align="center"bgcolor="#cde6c7" height="60">
	  		
	  		
	  		<td><%=city.getCity_no() %></td>
	  		<td><%=city.getCity_name() %></td>
	  		<td>
	  		<input type="button" value="删除" onclick="deleteCity(<%=city.getCity_no() %>)">
	  		</td>
	  	</tr>
	  	<%} %>
	  </table>
	</body>
	
</html>