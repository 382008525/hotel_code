<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.service.CityServlet"%>
<%@ page import="com.model.City"%>
<%@ page import="com.service.AreaServlet"%>
<%@ page import="com.model.Area"%>
<html>
	<head>
		<title>酒店表</title>

	</head>
	<body>
		<jsp:useBean id="city" class="com.model.City"></jsp:useBean>
		<jsp:useBean id="area" class="com.model.Area"></jsp:useBean>
		<%
			List<City> cityList = CityServlet.getCity();
			List<Area> areaList = AreaServlet.getArea();
		%>
		<form action="../HotelServlet?type=addHotel" method="post">
			<table border="0" rules="none" width="85%" align="center">
				<tr bgcolor="#afdfe4" height="40" align="center">
					<td>
						酒店编号:
						<input type="text" name="hotel_no" />
					</td>
				</tr>

				<tr bgcolor="#afdfe4" height="40" align="center">
					<td>
						酒店名称:
						<input type="text" name="hotel_name" />
					</td>
				</tr>

				<tr bgcolor="#afdfe4" height="40" align="center">
					<td>
						  所在城市:
						<select name="city">
							<%
								for (int i = 0; i < cityList.size(); i++)
								{
									city = cityList.get(i);
							%>
							<option value="<%=city.getCity_no()%>"><%=city.getCity_name()%></option>
							<%
								}
							%>
						</select>
					</td>
				</tr>

				<tr bgcolor="#afdfe4" height="40" align="center">
					<td>
						所在地区:
							<select name="area">
							<%
								for (int i = 0; i < areaList.size(); i++)
								{
									area = areaList.get(i);
							%>
							<option value="<%=area.getArea_no()%>"><%=area.getArea_name()%></option>
							<%
								}
							%>
						</select>
					</td>
				</tr>

				<tr bgcolor="#afdfe4" height="40" align="center">
					<td>
						酒店地址:
						<input type="text" name="address" />
					</td>
				</tr>

				<tr bgcolor="#afdfe4" height="40" align="center">
					<td>
						酒店电话:
						<input type="text" name="hotel_telephone" />
					</td>
				</tr>

				<tr bgcolor="#afdfe4" height="40" align="center">
					<td>
						最低价:
						<input type="text" name="lowest_price" />
					</td>
				</tr>
				<tr bgcolor="#afdfe4" height="40" align="center">
					<td>
						房间总数:
						<input type="text" name="room_count" />
					</td>
				</tr>
				<tr bgcolor="#afdfe4" height="40" align="center">
					<td>
						简介:<textarea rows="5" cols="100" name="text_introduction"></textarea>
					</td>
				</tr>

				<tr bgcolor="#afdfe4" height="40" align="center">
					<td>
						<input type="reset" value="重置" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="submit" value="提交" />
					</td>
				</tr>
			</table>
		</form>
	</body>

</html>