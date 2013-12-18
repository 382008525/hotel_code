<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.service.AreaServlet" %>
<%@ page import="com.model.Area" %>
<html>
	<head>
	   <title>地区表</title>
	   	<script type="text/javascript">
	      function deleteArea(area_no)
	      {
	    	   if(confirm('您确定删除吗？'))
               {
                   window.location.href="../AreaServlet?type=deleteArea&area_no="+area_no;
               }
	      }
	   </script>
	</head>
	<body>
		<jsp:useBean id="area" class="com.model.Area"></jsp:useBean>
	<%
	     List<Area> list = AreaServlet.getArea();
	%>			
	    <table border="0"rules="none" width="85%"align="center">
	  	<tr bgcolor="#afdfe4" height="40">
	  		
	  		<th>地区编号</th>
	  		<th>地区名称</th>
	  		<th>城市编号</th>
	  		<th>操作</th>
	  	</tr>
	  	<%
	  	   for(int i = 0;i < list.size();i++)
	  	   {
	  		   area = list.get(i);
	  	%>
	  	<tr align="center"bgcolor="#cde6c7" height="60">
	  		<td><%=area.getArea_no() %></td>
	  		<td><%=area.getArea_name() %></td>
	  		<td><%=area.getCity_no() %></td>
	  		<td><input type="button"value="删除" onclick="deleteArea(<%=area.getArea_no() %>)"></td>
	  	</tr>
	  	<%} %>
	  </table>
	</body>
	
</html>