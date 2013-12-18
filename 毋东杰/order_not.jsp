<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.model.Trade" %>
<%@page import="com.service.TradeServlet"%>

<html>
	<head>
	   <title>未出行订单</title>
	</head>
	<body>		
	<%
	      System.out.println("----------------ss");
	      List<Trade> list = TradeServlet.getTrade(request,response);
	%>		
	  <table border="0"rules="none" width="85%"align="center">
	  	<tr bgcolor="#afdfe4" height="40">
	  		<th><input type="checkbox">全选</th>
	  		<th>订单编号</th>
	  		<th>预定日期</th>
	  		<th>产品内容</th>
	  		<th>入住/退房日期</th>
	  		<th>订单金额</th>
	  		<th>订单状态</th>
	  		<th>操作</th>
	  	</tr>
	  <%
	       for(int i =0 ;i < list.size();i++)
	       {
	  %>	
	  	<tr align="center"bgcolor="#cde6c7" height="60">
	  		<td colspan="2">1</td>
	  		<td><%=list.get(i).getTrade_no() %></td>
	  		<td><%=list.get(i).getTrade_date() %></td>
	  		<td><%=list.get(i).getRoom_no() %></td>
	  		<td><%=list.get(i).getStart_date()+"/"+list.get(i).getEnd_date() %></td>
	  		<td><%=list.get(i).getTrade_money() %></td>
	  		<td>1</td>
	  		<td><a href=dingdanxinxi.html><input type="button"value="查看"></a><input type="button"value="删除"></td>
	  	</tr>
	  	<%} %>
	  </table>
	   
	</body>
	
</html>