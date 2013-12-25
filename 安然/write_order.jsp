<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.service.*" %>
<%@ page import="com.model.*" %>
<html>
	<head>
	   <title>填写订单信息</title>
	   	<script type="text/javascript">
        function complete_order(hotel_no,room_no)
        {
    	  window.location.href="complete_order.jsp?hotel_no="+hotel_no+"&room_no="+room_no;
        }
     </script>
	</head>
	<body>
	<jsp:useBean id="hotel" class="com.model.Hotel"></jsp:useBean>
	<jsp:useBean id="room" class="com.model.Room"></jsp:useBean>
	<%
	    int hotel_no = Integer.parseInt(request.getParameter("hotel_no"));
	    int room_no = Integer.parseInt(request.getParameter("room_no"));
	    hotel = HotelServlet.getSpecial(hotel_no);
	    room = RoomServlet.getSpecial(room_no);
	    User user = (User)session.getAttribute("user");
	%>			
	 <div style="position:absolute; left:50;top:50;">
	 <table border="0"width="250"height="250"align="left">
	 	<tr bgcolor="#afdfe4">
	 	 <td>
	 	 	酒店名称：<%=hotel.getHotel_name() %>
	 	 	<br/>
	 	 	地址：<%=hotel.getAddress()%>
	 	 </td>
	 	</tr>
	 	<tr bgcolor="#cde6c7">
	 	 <td>
	 	 	房型：<%=room.getType() %><br/>
	 	 	床型：大床<br/>
	 	 	宽带：宽带（免费）<br/>
	 	 	面积：<%=room.getSpace() %>
	 	 </td>
	 	</tr>
	 </table>
	 </div>
	 	<div style="position:absolute; left:300;top:25;">
	 <table width="800"border="0"align="right" >
	   <tr><th align="left">填写订单信息</th></tr>
	   <tr><td>
	   	<table border="0"rules="none" width="100%"align="center">
	  	
	  	<tr bgcolor="#afdfe4" height="40">
	  		<th align="left">高级单人间</th>
	  		
	  	</tr>
	  	<tr align="left"bgcolor="#cde6c7" height="40">
	  		
	  		<td>房间数：
	  			<select name="room_count">
	  			<option selected="selected" value="1">1</option>
	  			<option value="2">2</option>
	  			<option value="3">3</option>
	  			<option value="4">4</option>
	  			</select>
	  			间
	  		</td>
	  		
	  	</tr>
	  	<tr align="left"bgcolor="#cde6c7" height="40">
	  		
	  		<td>入住时间	12月13日入住，12月14日退房</td>
	  		
	  		
	  	</tr>
	  	<tr align="left"bgcolor="#cde6c7" height="40">
	  		
	  		<td>房费总计	￥<%=room.getPrice()%></td>
	  		
	  		
	  	</tr>
	  	
	  </table></td></tr>
	  <tr><td>
	  <table border="0"rules="none" width="100%"align="center">
	  	
	  	<tr bgcolor="#afdfe4" height="40">
	  		<th align="left">入住信息</th>
	  		
	  	</tr>
	  	<tr align="left"bgcolor="#cde6c7" height="40">
	  		
	  		<td>
	  		入住人姓名<%=user.getUsername() %>
	  		</td>
	  		
	  		
	  	</tr>
	  	<tr align="left"bgcolor="#cde6c7" height="40">
	  		
	  		<td>联&nbsp;系&nbsp;电&nbsp;话:
	  			<%=user.getTelephone() %>
	  		</td>
	  		
	  		
	  	</tr>
	  	<tr align="left"bgcolor="#cde6c7" height="40">
	  		<td>居&nbsp;&nbsp;&nbsp;住&nbsp;&nbsp;&nbsp;&nbsp;地:
	  			<%=user.getAddress() %>
	  		</td>
	  	</tr>
	  	
	  </table>
	 
	 </td></tr>
	 <tr bgcolor="#cde6c7">
	 	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <input type="button"  value="继续" onclick="complete_order(<%=hotel.getHotel_no()%>,<%=room.getRoom_no() %>)"/>
	  </td>
	 </tr>
	</table>
  </div>
	</body>
	
</html>