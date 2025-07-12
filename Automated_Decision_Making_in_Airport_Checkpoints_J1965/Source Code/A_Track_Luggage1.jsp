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
	  
	  <h2>Tracked Luggage Details!!!</h2>
	  <p>&nbsp;</p>
	   	<%@ include file="connect.jsp" %>
		<%@ page import="java.util.*"%>
		<%@ page import="java.text.*"%>
		<%@ page import="java.util.Date"%>
		
	  <%
	  
	  try
		{
		String s11=request.getParameter("s2");
		String query1="select * from trackluggage  where pname='"+s11+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
            <br/>
            <br />
            <br />
            <p align="center" class="style24 style31 style6">Lukkage Details Already Exist..</p>
            <br />
          
            <p align="center">
              <%
				
					   }
					   else
					   {
		 
		String id=request.getParameter("s1");
		String s1=request.getParameter("s2");
		String s2=request.getParameter("s3");
		String s3=request.getParameter("s4");
		String s4=request.getParameter("s5");
		String s5=request.getParameter("s6");
		String s6=request.getParameter("s7");
		String s7=request.getParameter("s8");		
		String s8=request.getParameter("s9");
		String s9=request.getParameter("s10");
		String s10=request.getParameter("s11");
		
							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							Date now = new Date();
							String strDate = sdfDate.format(now);
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
							
		
							Statement st=connection.createStatement();
							st.executeUpdate("insert into trackluggage(pname,td,bs,bt,ds,dt,dd,Luggage1,Luggage2,Comments,datetime) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+dt+"') ");
							
							%>
							
							  <h2>Identity Validation and Luggage Tracking Added Successfully !!! </h2>
		
		<%
						}
			
		}
		catch(Exception ex)
		{
		out.println(ex);
		}
	  
	  
	  %>
	  
	
	
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
