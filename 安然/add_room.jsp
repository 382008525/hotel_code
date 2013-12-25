<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.model.Hotel" %>
<%@ page import="com.service.HotelServlet" %>
<html>
	<head>
	   <title>房间表</title>
	  
	</head>
	<body>
	<jsp:useBean id="hotel" class="com.model.Hotel"></jsp:useBean>	
	<form action="../RoomServlet?type=addRoom" method="post">		
	    <table border="0"rules="none" width="85%"  align="center">
	  	  <tr bgcolor="#afdfe4" height="40"align="center">
	  		
	  	 <td>
	  		<%
	  		   List<Hotel> list = HotelServlet.getHotel();
	  		%>
	  		酒店编号:<select name="hotel">
	  		<%
	  		   for(int i = 0;i < list.size();i++)
	  		   {
	  			   hotel = list.get(i);
	  		%>
	  		        <option value="<%=hotel.getHotel_no() %>"><%=hotel.getHotel_name() %></option>
	  		        <%} %>
	  		      </select>
	  		</td>
	  		</tr>
	  		<tr bgcolor="#afdfe4" height="40"align="center">
	  		<td>房&nbsp;&nbsp;间&nbsp;&nbsp;编&nbsp;&nbsp;号:<input type="text" name="room_no"/></td>
	  		</tr>
	  		<tr bgcolor="#afdfe4" height="40"align="center">
	  		<td>价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格:<input type="text" name="price"/></td>
	  		</tr>
	  		<tr bgcolor="#afdfe4" height="40"align="center">
	  		<td>
	  		房&nbsp;&nbsp;间&nbsp;&nbsp;类&nbsp;&nbsp;型:
	  		<select name="room_type">
	  		   <option value="1">标准单人间</option>
	  		   <option value="2">标准双人间 </option>
	  		   <option value="3">普通间</option>
	  		   <option value="4">钟点房</option>
	  		   <option value="5">豪华套房</option>
	  		</select>
	  		</td>
	  		</tr>
	  		<tr bgcolor="#afdfe4" height="40"align="center">
	  		<td>空&nbsp;&nbsp;间&nbsp;&nbsp;大&nbsp;&nbsp;小:<input type="text" name="space"/></td>
	  		</tr>
	  		<tr bgcolor="#afdfe4" height="40"align="center">
	  		<td>该类型房间数量:<input type="text" name="type_room_no"/></td>
	  	  </tr>
	  	  <tr bgcolor="#afdfe4" height="40"align="center">
	  		<td>
	  		文&nbsp;&nbsp;本&nbsp;&nbsp;介&nbsp;&nbsp;绍:
	  		<textarea rows="5" cols="100" name="text_introduction"></textarea>
	  		</td>
	  		</tr>
	  	  <tr bgcolor="#afdfe4" height="40"align="center">
	      <td> 
	  		<input type="reset" value="重置"/>
	  		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  	  <input type="submit" value="提交"/>
	      </td>
	  </table>
	  </form>
	</body>
	
</html> 