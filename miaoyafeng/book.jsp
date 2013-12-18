<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.service.CityServlet"%>
<%@ page import="com.model.City"%>
<%@ page import="com.model.*" %>
<%@page import="com.service.RoomServlet"%>
<%@page import="com.service.HotelServlet"%>
<%@page import="com.db.DBHelper"%>
<html>
<head>
<title> 酒店预订 </title>
<script type="text/javascript">
   function getData(hotel_no)
   {
	   window.location.href="BookAction?type=book&hotel_no="+hotel_no;
   }
</script>
</head>
<body>
   		<jsp:useBean id="city" class="com.model.City"></jsp:useBean>
   		<jsp:useBean id="hotel" class="com.model.Hotel"></jsp:useBean>
   		<jsp:useBean id="room" class="com.model.Room"></jsp:useBean>
		<%
			List<City> cityList = CityServlet.getCity();
		    List<Room> roomList = RoomServlet.getRoom();
		    List<Hotel> hotelList = HotelServlet.getHotel();
		%>
   <table border="1" width="1000" align="center"  frame="void" bordercolor="#FFE153">
     <tr  bgcolor="#FFFFDF">
       <th align="left">
         <label><font color="#D9B30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;入住城市&nbsp;</font>
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
         </label>
         <label><font color="#D9B30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;入住时间&nbsp;</font>
                 <input type="text" name="start_date"/>
        </label>
        <label><font color="#D9B30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;退房时间&nbsp;</font>
      <input type="text" name="end_date"/> </label>
         <input type="button" class="serchBut cf fw" value="&nbsp;&nbsp;搜索&nbsp;" id="m_search"method="m_search" /></div>
        </th>
    </tr>
</table>

<table border="1" width="1000"  align="center" bordercolor="#C7C7E2" frame="hside" bgcolor="#FFFFF4" rules="all">  
     <tr><td height="56" align="left"><font size=2px><strong>位置:</strong></font> 
           <label>
             <input type="radio" name="area"  value="radiobutton">
                 飞机场 </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <label>
             <input type="radio" name="location" value="radiobutton">
                  火车站</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <label>
             <input type="radio" name="location" value="radiobutton">
                 学校附近</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           </label>
             <input type="radio" name="location" value="radiobutton">
               饭店  </label>
         </form>
         </td></tr>
     <tr><td  height="30" align="left"><font size="2px"><strong>房价:</strong></font>   
         <label>
           <input type="radio" name="price" value="radiobutton">
           600元以上</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <label>
           <input type="radio" name="price" value="radiobutton">
           300-600元</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <label>
           <input type="radio" name="price" value="radiobutton">
         150-300元</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <label>
           <input type="radio" name="price" value="radiobutton">
           150元以下</label>
       </td></tr>
     <tr><td   height="30"  align="left"><font size=2px><strong>星级:</strong></font>   
         <label>
           <input type="radio" name="grade" value="radiobutton">
           五星/豪华</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <label>
           <input type="radio" name="grade" value="radiobutton">
           四星/高档</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         </label>
           <input type="radio" name="grade" value="radiobutton">
           三星/舒适</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <label>
           <input type="radio" name="grade" value="radiobutton">
           经济/客栈</label>
       </td></tr>
     <tr><td  height="30" align="left"><font size=2px bold><strong>品牌:</strong></font>   
         <label>
           <input type="radio" name="brand" value="radiobutton">
           如家</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <label>
           <input type="radio" name="brand" value="radiobutton">
           锦江</label>
       </td></tr>
   </table>
   <br> <br>
   <%
        for(int i = 0;i < hotelList.size();i++)
        {
        	hotel = hotelList.get(i);
   %>
   <table border="1" width="1000" align="center"  rules="rows" bordercolor="#A3D1D1"  >
      <tr>
      	<td height="110"> <a href= #><img width="100%" height="100%" align="left" src="1.jpg"></a></td>
        <td colspan="2"><font size="5" color="blue" face="黑体"> &nbsp;&nbsp; <a href="#" target="in" ><%=hotel.getHotel_name() %></a></font></td>
        <td colspan="2"><%=hotel.getLowest_price() %></td></tr>
      <%
           for(int j = 0;i < roomList.size();i++)
           {
        	   room = roomList.get(i);
        	   if(room.getHotel_no() == hotel.getHotel_no())
        	   {
      %>
      <tr>
      	<td height="30"><font size="3" color="blue" face="黑体"><a href="#" target="in"><%=room.getType() %></a></font></td>
      	<td>大床</td>
      	<td>无早餐</td>
      	<td><%=room.getPrice() %></td>
      	<td><input type="submit" value="查看" onclick="getData(<%=hotel.getHotel_no() %>)"></td>
      </tr>
      <%}} %>
   </table>
   <%} %>
</body>

</html>