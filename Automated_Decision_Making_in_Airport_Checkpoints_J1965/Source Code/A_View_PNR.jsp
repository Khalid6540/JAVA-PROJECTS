<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin All Users and Authorize Users </title>
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
.style6 {color: #FF0000}
.style7 {color: #000099}
.style8 {
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
        <h2 align="center" class="style5 style7 style8">Automated Decision Making in Airport Checkpoints Bias Detection Toward Smarter Security and Fairness</h2>
      </div>
      <div class="searchform"></div>
      <div class="style3"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html">Home Page</a></li>
          <li class="active"><a href="A_Login.jsp">Admin</a></li>
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
	   <h2 class="style5">  View Passenger Name Records(Based On Current Date)</h2>
       <table width="913" border="1" align="center"  cellpadding="0" cellspacing="0">
            <tr>
              <td width="51" height="37" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style6"><strong>ID</strong></div></td>
              <td width="157" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style6"><strong>Airplane</strong></div></td>
              <td width="121" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style6"><strong>Passenger Name</strong></div></td>
			  <td width="121" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style6"><strong>Travelling Date </strong></div></td>
              <td width="142" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style6"><strong>Boarding Station </strong></div></td>
              <td width="135" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style6"><strong>Boarding Time </strong></div></td>
              <td width="121" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style6"><strong>Departure Station </strong></div></td>
              <td width="108" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style6"><strong>Departure Time </strong></div></td>
			  
			  <td width="108" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style6"><strong>Departure Date </strong></div></td>
			  
			  
			    <td width="108" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style6"><strong>Track Luggage </strong></div></td>
            </tr>
           <%@ include file="connect.jsp" %>
			<%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%
			
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						
						
							Date now1 = new Date();
							SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
							String strCurrDate = sdf1.format(now1);
						
						
						   	String query="select * from passenger"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3); // tdate
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(7);
								s7=rs.getString(8);
								
									if(s2.equalsIgnoreCase(strCurrDate))
								{
								
					%>
            <tr>
              <td height="122" align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style70 style71 style7"><strong>
                  <%out.println(i);%>
              </strong></div></td>
              <td  rowspan="1" align="center" valign="middle" ><div class="style57 style86 style55 style54 style37 style70 style71 style7" style="margin:10px 13px 10px 13px;" ><strong>
                  <input  name="image" type="image" src="images1.jsp?value=<%="user"%>&amp;id=<%=i%>" style="width:120px; height:100px;" />
              </strong></div></td>
              <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style7"><strong>
                  <%out.println(s1);%>
              </strong></div></td>
			  <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style7"><strong>
                  <%out.println(s2);%>
              </strong></div></td>
              <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style7"><strong>
                  <%out.println(s3);%>
              </strong></div></td>
              <td align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style7"><strong>
                  <%out.println(s4);%>
              </strong></div></td>
              <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style7"><strong>
                  <%out.println(s5);%>
              </strong></div></td>
             
              <td width="76" align="center"  valign="middle"><div align="center" class="style20 style37 style55 style30 style71 style72 style7">
                  <%out.println(s6);%>
              </div></td>
			    <td width="76" align="center"  valign="middle"><div align="center" class="style20 style37 style55 style30 style71 style72 style7">
                  <%out.println(s7);%>
              </div></td>
			  <td width="76" align="center"  valign="middle"><div align="center" class="style20 style37 style55 style30 style71 style72 style7">
                  <a href="A_Track_Luggage.jsp?id=<%=i%>&pname=<%=s1%>&td=<%=s2%>&bs=<%=s3%>&bt=<%=s4%>&ds=<%=s5%>&dt=<%=s6%>&dd=<%=s7%>">Track</a>
              </div></td>
              <%
			  		}
						}
						
						%>
            </tr>
            <%
						
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
      </table>
	   <p align="right">&nbsp;</p>
	  <p align="right">&nbsp;</p>
	  <p align="right"><a href="A_Main.jsp">Back</a></p>
	  <p align="right">&nbsp;</p>
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
