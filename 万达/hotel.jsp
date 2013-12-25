<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.service.*" %>
<%@ page import="com.model.*" %>
<% %>
<html>
	<head>
	<script type="text/javascript">
   function write_order(hotel_no,room_no)
   {
	   window.open("write_order.jsp?&hotel_no="+hotel_no+"&room_no="+room_no);
   }
     </script>
	</head>
	<body>
	<jsp:useBean id="hotel" class="com.model.Hotel"></jsp:useBean>
	<jsp:useBean id="room" class="com.model.Room"></jsp:useBean>
	<%
	    int hotel_no = Integer.parseInt(request.getParameter("hotel_no"));
	    System.out.println(hotel_no);
	    hotel = HotelServlet.getSpecial(hotel_no);
	    List<Room> roomList = RoomServlet.getRoom();
	%>
			<table border="1" width="1000" align="center" rules="rows"
				frame="above">
				<tr bgcolor="#D1E9E9" height="50" width="100">
					<td colspan="2">
						<font size="5" color="46A3FF">房型</font>
					</td>
					<td>
						<font size="5" color="46A3FF">床型</font>
					</td>
					<td>
						<font size="5" color="46A3FF">日均价</font>
					</td>
					<td>
						&nbsp;
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				<%
				    for(int i = 0;i < roomList.size();i++)
				    {
				    	room = roomList.get(i);
				    	if(hotel.getHotel_no() == room.getHotel_no())
				    	{
				%>
				<tr>
					<td>
						<img src="4.jpg">
					</td>
					<td>
						<font size="2" color="#00800F"><%=room.getType() %></font>
					</td>
					<td>
						大
					</td>
					<td>
						<%=room.getPrice() %>
					</td>
					<td>
						<input type="button" value="提交" onclick="write_order(<%=hotel.getHotel_no()%>,<%=room.getRoom_no() %>)">
					</td>
				</tr>
				<%} }%>
			</table>
			<table border="1" width="1000" align="center" rules="rows"
				frame="above">
				<tr height="50">
					<td>
						<font size="4" color="46A3FF" align="center">酒店设施 </font>
					</td>
				</tr>
				<tr>
					<td width="10%">
						<font size="3"> 酒店电话 </font>
					</td>
					<td>
						<%=hotel.getHotel_telephone() %>
					</td>
				</tr>
				<tr>
					<td width="10%">
						<font size="3"> 酒店房数 </font>
					</td>
					<td>
						本酒店有<%=hotel.getRoom_count() %>个房间
					</td>
				</tr>
				<tr>
					<td width="10%">
						<font size="3"> 酒店地址 </font>
					</td>
					<td>
						<%=hotel.getAddress() %>
					</td>
				</tr>
				<tr>
					<td width="10%">
						<font size="3"> 酒店简介 </font>
					</td>
					<td>
					<%=hotel.getText_introduction() %>
					</td>
				</tr>
			</table>
		</body>
</html>