<%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
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
	try{
 // 准备语句执行对象
int type =  Integer.valueOf(request.getParameter("type"));  //type=1获取医院图片，type=2获取医生照片
String pos =request.getParameter("pos");
Blob b = null;

 if (b!=null) { 
 out.print("have<br/>");
 long size = b.length();
 out.print(size);
 byte[] bs = b.getBytes(1, (int)size);
 response.reset();
 response.setContentType("image/jpeg");
 OutputStream outs = response.getOutputStream();
   outs.write(bs);
   outs.flush();
   }else {
   response.sendRedirect("./images/error.jpg");
   }}finally{
   
   }
%>
</body>
</html>