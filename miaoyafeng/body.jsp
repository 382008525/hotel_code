<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.service.CityServlet"%>
<%@ page import="com.model.City"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>首页</title>
		<link href="css/1.css" rel="stylesheet" media="screen" type="text/css" />
	</head>
	<body bgcolor="#C6E2FF">
		<jsp:useBean id="city" class="com.model.City"></jsp:useBean>
		<%
			List<City> cityList = CityServlet.getCity();
		%>
		<div style="position: absolute; left: 200px; top: 13px; width: 48%;">
			<form action="book.jsp" method="post">
				<table border="3" width="46%" align="left" height="66%"
					bordercolor="#3333FF" rules="cols">
					<td height="46">
						<h2 align="center">
							&nbsp;
						</h2>
						<h2 align="center">
							酒店
						</h2>
					</td>
					<tr>
						<td width="398" height="356" align="center" valign="top">
							<p>
								&nbsp;
							</p>
							<p>
								&nbsp;
							</p>
							<p>
								入住城市
								<select name="city" style="width: 150px;">
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
								<br>
								<br>
								入住日期
								<input type="text" name="start_date" size="20" maxlength="11">
								<br>
								<br>
								退房日期
								<input type="text" name="end_date" size="20" maxlength="11">
								<br>
								<br>
								酒店级别
								<input type="text" name="hotel_type" size="20" maxlength="10">
								<br>
								<br>
								<br>
								<br>
								<input type="submit" value="搜索">
							</p>
						</td>
					</tr>
				</table>
			</form>
		</div>
		<div style="position: absolute; left: 550px; top: 13px; width: 50%;">
			<table border="0" width="100%" align="center" height="450"
				background="image/2.jpg">
				<td></td>
			</table>
		</div>
	</body>

</html>