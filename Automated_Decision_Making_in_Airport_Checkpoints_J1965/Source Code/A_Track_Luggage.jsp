<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Track_Luggage</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style2 {font-size: 24}
.style3 {padding:0; margin:0; width:100%; line-height:0; clear: both;}
.style5 {
	font-size: 36px;
	color: #FF00FF;
}
.style6 {
	color: #FF0000;
	font-weight: bold;
}
.style7 {
	font-size: 18px;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main style2">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
         <h2 align="center" class="style5 style7">Automated Decision Making in Airport Checkpoints Bias Detection Toward Smarter Security and Fairness</h2>
      </div>
      <div class="searchform"></div>
      <div class="style3"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html">Home Page</a></li>
          <li class="active"><a href="A_Login.jsp">Airport Admin</a></li>
          <li><a href="U_Login.jsp">User</a></li>
        </ul>
      </div>
      <div class="style3"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="style3"></div>
      </div>
      <div class="style3"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  
	  <h2>Track Luggage !!!</h2>
	  <p>&nbsp;</p>
	   <%@ include file="connect.jsp" %>
	  <%
	  
	  try
		{
    	String id=null;
		 
		id=request.getParameter("id");
		String s1=request.getParameter("pname");
		String s2=request.getParameter("td");
		String s3=request.getParameter("bs");
		String s4=request.getParameter("bt");
		String s5=request.getParameter("ds");
		String s6=request.getParameter("dt");
		String s7=request.getParameter("dd");
			
		}
		catch(Exception ex)
		{
		out.println(ex);
		}
	  
	  
	  %>
	  
	  
	  
	  <form id="form1" name="form1" method="post" action="A_Track_Luggage1.jsp">
          <p>&nbsp;</p>
          <table width="486" border="0">
            <tr>
              <td width="189" height="34" bgcolor="#FF0000"><span class="style12">Pid</span></td>
              <td width="279"><input type="text" name="s1" value="<%=request.getParameter("id")%>"/></td>
            </tr>
            <tr>
              <td height="34" bgcolor="#FF0000"><span class="style12">Passenger Name </span></td>
              <td><input type="text" name="s2" value="<%=request.getParameter("pname")%>"/></td>
            </tr>
            <tr>
              <td height="32" bgcolor="#FF0000"><span class="style12">Travelling Date </span></td>
              <td><input type="text" name="s3" value="<%=request.getParameter("td")%>" /></td>
            </tr>
            <tr>
              <td height="31" bgcolor="#FF0000"><strong>Boarding Station</strong></td>
              <td><input type="text" name="s4" value="<%=request.getParameter("bs")%>"/></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000"><strong>Boarding Time</strong></td>
              <td><input type="text" name="s5" value="<%=request.getParameter("bt")%>"/></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000"><strong>Departure Station</strong></td>
              <td><input type="text" name="s6" value="<%=request.getParameter("ds")%>"/></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000"><strong>Departure Time</strong></td>
              <td><input type="text" name="s7" value="<%=request.getParameter("dt")%>"/></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000"><strong>Departure Date</strong></td>
              <td><input type="text" name="s8" value="<%=request.getParameter("dd")%>"/></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000">Track and List All Luggage1 </td>
              <td><textarea name="s9" cols="25" rows="5"></textarea></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000">Track and List All Luggage2</td>
              <td><textarea name="s10" cols="25" rows="5"></textarea></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000">Give Luggage Tracked Comments </td>
              <td><textarea name="s11" cols="25" rows="5"></textarea></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><input type="submit" name="Submit" value="Add Tracking Details" />
              <input type="reset" name="Submit2" value="Reset" /></td>
            </tr>
          </table>
          <p>&nbsp;</p>
        </form>
	  <p><a href="A_Main.jsp">Back</a></p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Airport Admin Menu</h2>
          <div class="style3"></div>
          <ul class="sb_menu">
             <li class="style6"><a href="A_Main.jsp">Home</a></li>
		    <li><span class="style6"><a href="A_Login.jsp">Logout</a></span></li>
          </ul>
        </div>
      </div>
      <div class="style3"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
