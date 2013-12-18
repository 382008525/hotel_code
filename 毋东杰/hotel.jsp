<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.model.Hotel" %>
<%@ page import="com.service.HotelServlet" %>
<html>
	<head>
		<title>酒店表</title>
	    <script type="text/javascript">
	      function deleteHotel(hotel_no)
	      {
	    	   if(confirm('您确定删除吗？'))
               {
                   window.location.href="../HotelServlet?type=deleteHotel&hotel_no="+hotel_no;
               }
	      }
	   </script>
	</head>
	<body>
		<jsp:useBean id="hotel" class="com.model.Hotel"></jsp:useBean>
		<%
			List<Hotel> list = HotelServlet.getHotel();
		%>
		<table border="0" rules="none" width="85%" align="center">
			<tr bgcolor="#afdfe4" height="40">
				<th>
					酒店编号
				</th>
				<th>
					酒店名称
				</th>
				<th>
					城市编号
				</th>
				<th>
					地区编号
				</th>
				<th>
					酒店地址
				</th>
				<th>
					酒店电话
				</th>
				<th>
					最低价
				</th>
				<th>
					简介
				</th>
				<th>
					房间总数
				</th>
				<th>
					操作
				</th>
			</tr>
			<%
			    for(int i = 0;i < list.size();i++)
			    {
			    	hotel = list.get(i);
			%>
			<tr align="center" bgcolor="#cde6c7" height="60">
				<td>
					<%=hotel.getHotel_no() %>
				</td>
				<td>
					<%=hotel.getHotel_name() %>
				</td>
				<td>
					<%=hotel.getCity_no() %>
				</td>
				<td>
					<%=hotel.getArea_no()%>
				</td>
				<td>
					<%=hotel.getAddress() %>
				</td>
				<td>
					<%=hotel.getHotel_telephone() %>
				</td>
				<td>
				    <%=hotel.getLowest_price() %>
				</td>
				<td>
					<%=hotel.getText_introduction() %>
				</td>
				<td>
					<%=hotel.getRoom_count() %>
				</td>


				<td>
					<input type="button" value="删除" onclick="deleteHotel(<%=hotel.getHotel_no()%>)"/>
				</td>
			</tr>
			<%} %>
		</table>
	</body>

</html>