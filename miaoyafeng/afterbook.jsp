<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<title> 酒店预订 </title>
<script type="text/javascript">
   function getData(hotel_no)
   {
	   window.location.href="hotel.jsp?hotel_no="+hotel_no;
   }
</script>
</head>
<body>
<%
      int hotel_no = (Integer)request.getAttribute("hotel_no");
      request.setAttribute("hotel_no",hotel_no);
%>
     <table border="0" width="1000" align="center">
        <tr>
        	<td rowspan="2" width="100%" height="100%"><img src=".jpg"></td>
        	<td width="100%" height="100%"><img src=".jpg"></td>
        	<td width="100%" height="100%"><img src=".jpg"></td>
        	<td width="100%" height="100%"><img src=".jpg"></td>
        </tr>
        <tr>
               <td width="100%" height="100%"><img src=".jpg"></td>
               <td width="100%" height="100%"><img src=".jpg"></td>
               <td width="100%" height="100%"><img src=".jpg"></td>
        </tr>	
     </table>
     <br>
 <table  border="1" bordercolor="#0033ff" align="center" width="1000" height="30" frame="above" rules="none">
	 <tr> 
	       <td width="80" align="left"><font size="5" color="white" face="黑体"><a href="hotel.jsp?hotel_no=<%=hotel_no %>" target="on">房型</a></font></td>
	       <td> <div style="position:absolute;left:500;top:97;width:60"> <font size="5" color="white" face="黑体"><a href=photo.html target="on" >图片</a></font></div></td>
	 </tr> 
	 <tr>
                    
               <td valign="bottom" height="50" ><div style="float:left"><li class="mb15"><span class="title">入住日期</span><input type="text" class="intxt checkin" method="txtEnterDate" onblurmethod="txtEnterDate" id="m_preDate" value="2013-12-13"maxlength="20" name="CheckInDate" />
                       </div> 

                <div  style="float:left ;margin-left:20px"> <li class="mb15"><span class="title">退房日期</span><input type="text" class="intxt checkout" method="txtOutDate" onblurmethod="txtOutDate" id="m_endDate" value="2013-12-14" maxlength="20" name="CheckOutDate" />
             </div></td>
	 </tr>
	 <tr><td  height="400"><iframe width="100%" height="100%" src="hotel.jsp?hotel_no=<%=hotel_no %>" name="on" frameborder="0" scrolling="no"></iframe></td></tr>
 </table>
 <hr width="100%">
</body>

</html>