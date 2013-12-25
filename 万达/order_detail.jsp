<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.model.*" %>
<html>
	<head>
	   <title>订单信息</title>
	</head>
	<body>
	<jsp:useBean id="user" class="com.model.User"></jsp:useBean>	
	<jsp:useBean id="trade" class="com.model.Trade"></jsp:useBean>
	<jsp:useBean id="hotel" class="com.model.Hotel"></jsp:useBean>
	<%
	     //String
	%>	
	  <table border="0"rules="none" width="85%"align="center">
	  	
	  	<tr bgcolor="#afdfe4" height="40">
	  		<th colspan="4">订单信息</th>
	  		
	  	</tr>
	  	<tr align="center"bgcolor="#cde6c7" height="60">
	  		
	  		<td>订单编号：</td>
	  		<td>预定日期：</td>
	  		<td>订单状态：</td>
	  		<td>总金额：</td>
	  		
	  	</tr>
	  	
	  </table>
	  <table border="0"rules="none" width="85%"align="center">
	  	
	  	<tr bgcolor="#afdfe4" height="40">
	  		<th colspan="3">房间信息</th>
	  		
	  	</tr>
	  	<tr align="center"bgcolor="#cde6c7" height="50">
	  		
	  		<td colspan="3">酒店名称：</td>
	  	
	  		
	  		
	  	</tr>
	  	<tr align="center"bgcolor="#cde6c7" height="50">
	  		
	  		<td>电话：</td>
	  		<td colspan="2" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地址：</td>
	  		
	  		
	  		
	  		
	  	</tr>
	  	<tr align="center"bgcolor="#cde6c7" height="50">
	  		
	  		<td>入店日期：</td>
	  		<td>离店日期：</td>
	  		<td>最晚到店时间：</td>
	  		
	  		
	  	</tr>
	  	<tr align="center" bgcolor="#cde6c7" height="50">
	  		
	  		<td>房型：</td>
	  		<td colspan="2" align="left" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  			&nbsp;&nbsp;&nbsp;房间数：</td>
	  		
	  		
	  		
	  	</tr>
	  	
	  </table>
	   <table border="0"rules="none" width="85%"align="center">
	  	
	  	<tr bgcolor="#afdfe4" height="40">
	  		<th colspan="2">入住人信息</th>
	  		
	  	</tr>
	  	<tr align="center"bgcolor="#cde6c7" height="50">
	  		
	  		<td>入住人：</td>
	  		<td>身份证号：</td>
	  		
	  		
	  	</tr>
	  	
	   </table>
	   <table border="0"rules="none" width="85%"align="center">
	  	
	  	<tr bgcolor="#afdfe4" height="40">
	  		<th colspan="2">联系人信息</th>
	  		
	  	</tr>
	  	<tr align="center"bgcolor="#cde6c7" height="50">
	  		
	  		<td>联系人：</td>
	  		<td>手机号码：</td>
	  		
	  		
	  	</tr>
	  	
	   </table>
	   <table border="0"rules="none" width="85%"align="center">
	  	
	  	<tr bgcolor="#afdfe4" height="40">
	  		<th>特殊说明</th>
	  		
	  	</tr>
	  	<tr align="left"bgcolor="#cde6c7" height="50">
	  		
	  		<td>1、酒店暂无法提供住宿发票；<br>2房间不包含空调使用费，若需开启，每间房间另收取20元/间夜。<br>3、经济房不免费提供一次性洗浴用品以及浴巾毛巾，如需使用，每套收费10元。</td>
	  		
	  	</tr>
	  	
	   </table>
	</body>
	
</html>