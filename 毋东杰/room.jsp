<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.model.Room" %>
<%@ page import="com.service.RoomServlet" %>
<html>
	<head>
	   <title>房间表</title>
	   <script type="text/javascript">
	      function deleteRoom(room_no)
	      {
	    	   if(confirm('您确定删除吗？'))
               {
                   window.location.href="../RoomServlet?type=deleteRoom&room_no="+room_no;
               }
	      }
	   </script>
	</head>
	<body>
	<jsp:useBean id="room" class="com.model.Room"></jsp:useBean>			
	    <table border="0"rules="none" width="85%"align="center">
	  	<tr bgcolor="#afdfe4" height="40">
	  		<th>酒店编号</th>
	  		<th>房间编号</th>
	  		<th>价格</th>
	  		<th>房间类型</th>
	  		<th>空间大小</th>
	  		<th>文本介绍</th>
	  		<th>操作</th>
	  	</tr>
	  	<%
	  	   List<Room> list = RoomServlet.getRoom();
	  	   for(int i = 0;i < list.size();i++)
	  	   {
	  		   room = list.get(i);
	  		   String room_type = null;
	  		   if(room.getType() == 1)
	  		   {
	  			   room_type = "标准单人间";
	  		   }
	  		   else if(room.getType() == 2)
	  		   {
	  			   room_type = "标准双人间";
	  		   }
	  		   else if(room.getType() == 3)
	  		   {
	  			   room_type = "普通房";
	  		   }
	  		   else if(room.getType() == 4)
	  		   {
	  			   room_type = "钟点房";
	  		   }
	  		   else if(room.getType() == 5)
	  		   {
	  			   room_type = "豪华套房";
	  		   }
	  	%>
	  	<tr align="center"bgcolor="#cde6c7" height="60">
	  	  <td><%=room.getHotel_no() %></td>
	      <td><%=room.getRoom_no() %></td>
	      <td><%=room.getPrice() %></td>
	      <td><%=room_type%></td>
	      <td><%=room.getSpace() %></td>
	      <td><%=room.getText_introduction() %></td>
	      <td><input type="button"value="删除" onclick="deleteRoom(<%=room.getRoom_no() %>)"></td>
	  	</tr>
	  	<%} %>
	  </table>
	</body>
	
</html>