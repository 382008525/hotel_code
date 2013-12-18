<%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>

		<%
			String URL = "jdbc:mysql://localhost:3306/house_trade?useUnicode=true&amp;amp;amp;amp;amp;amp;characterEncoding=utf-8";

			Connection con = DriverManager.getConnection(URL, "root", "pxm520");
			try
			{
				// 准备语句执行对象
				Statement stmt = con.createStatement();
				String sql = "select * from image_introduction where hotel_no='"+"'";
				ResultSet rs = stmt.executeQuery(sql);

				if (rs.next())
				{

					out.print("have<br/>");
					Blob b = (Blob) rs.getBlob("IMAGE");

					long size = b.length();
					out.print(size);
					byte[] bs = b.getBytes(1, (int) size);
					response.reset();
					response.setContentType("image/jpeg");

					OutputStream outs = response.getOutputStream();
					outs.write(bs);
					outs.flush();
					rs.close();

				} else
				{
					out.print("nothing");
					rs.close();
					response.sendRedirect("./images/error.gif");
				}

			} finally
			{
				con.close();
			}
		%>
	</body>
</html>