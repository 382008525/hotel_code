<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.model.*" %>
<%@ page import="com.service.*" %>
<html>
	<head>
	   <title>完成订单</title>
	   <script type="text/javascript">
	       function closeWindow()
	       {
	    	   window.close();
	       }
	   </script>
	</head>
	<body>
	<%
	    User user = (User)session.getAttribute("user");
	    int hotel_no = Integer.parseInt(request.getParameter("hotel_no"));
	    Hotel hotel = HotelServlet.getSpecial(hotel_no);
	    int room_no = Integer.parseInt(request.getParameter("room_no"));
	    Room room = RoomServlet.getSpecial(room_no);
	%>
	<form action="" method="post">
		<table border="0"rules="none" width="70%"align="center">	
		<tr><td>	
	  <table border="0"rules="none" width="100%"align="center">
	  	
	  	<tr bgcolor="#afdfe4" height="40">
	  		<th colspan="4">订单信息</th>
	  		
	  	</tr>
	  	<tr align="center"bgcolor="#cde6c7" height="60">
	  		
	  		<td>订单编号：</td>
	  		<td>预定日期：</td>
	  		<td>订单状态：</td>
	  		<td>总金额：<%=room.getPrice() %></td>
	  		
	  	</tr>
	  	
	  </table>
	  </td></tr>
	  <tr><td>
	  <table border="0"rules="none" width="100%"align="center">
	  	
	  	<tr bgcolor="#afdfe4" height="40">
	  		<th colspan="3">房间信息</th>
	  		
	  	</tr>
	  	<tr align="center"bgcolor="#cde6c7" height="50">
	  		
	  		<td colspan="3">酒店名称：<%=hotel.getHotel_name() %></td>
	  	
	  		
	  		
	  	</tr>
	  	<tr align="center"bgcolor="#cde6c7" height="50">
	  		
	  		<td>电话：<%=hotel.getHotel_telephone() %></td>
	  		<td colspan="2" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地址：<%=hotel.getAddress() %></td>
	  		
	  		
	  		
	  		
	  	</tr>
	  	<tr align="center"bgcolor="#cde6c7" height="50">
	  		
	  		<td>入店日期：</td>
	  		<td>离店日期：</td>
	  		<td>最晚到店时间：</td>
	  		
	  		
	  	</tr>
	  	<tr align="center" bgcolor="#cde6c7" height="50">
	  		
	  		<td>房型：<%=room.getType() %></td>
	  		<td colspan="2" align="left" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  			&nbsp;&nbsp;&nbsp;房间数：</td>
	  		
	  		
	  		
	  	</tr>
	  	
	  </table>
	  </td></tr>
	  <tr><td>
	   <table border="0"rules="none" width="100%"align="center">
	  	
	  	<tr bgcolor="#afdfe4" height="40">
	  		<th colspan="2">入住人信息</th>
	  		
	  	</tr>
	  	<tr align="center"bgcolor="#cde6c7" height="50">
	  		
	  		<td>入住人：<%=user.getUsername() %></td>
	  		<td>身份证号：<%=user.getID() %></td>
	  		
	  		
	  	</tr>
	  	
	   </table>
	   </td></tr>
	   <tr><td>
	   <table border="0"rules="none" width="100%"align="center">
	  	
	  	<tr bgcolor="#afdfe4" height="40">
	  		<th colspan="2">联系人信息</th>
	  		
	  	</tr>
	  	<tr align="center"bgcolor="#cde6c7" height="50">
	  		
	  		<td>联系人：<%=user.getLoginname() %></td>
	  		<td>手机号码：<%=user.getTelephone() %></td>
	  		
	  		
	  	</tr>
	  	
	   </table>
	   </td></tr>
	  <tr align="center"bgcolor="#cde6c7" height="50"><td >
	  	<input type="button" value="完成" onclick="closeWindow();">
	  	</td></tr>
	  </table> 
	  </form>
	</body>
	
</html>