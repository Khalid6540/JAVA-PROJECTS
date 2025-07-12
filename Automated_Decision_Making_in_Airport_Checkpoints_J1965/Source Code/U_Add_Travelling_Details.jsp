<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Travelling Details</title>
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
.style6 {color: #FF00FF}
.style7 {font-weight: bold}
.style8 {
	font-size: 18px;
	font-weight: bold;
}
.style9 {color: #FFFF00}
.style10 {color: #FFFF00; font-weight: bold; }
-->
</style>
</head>
<body>
<div class="main style2">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h2 align="center" class="style5 style8">Automated Decision Making in Airport Checkpoints Bias Detection Toward Smarter Security and Fairness</h2>
      </div>
      <div class="searchform"></div>
      <div class="style3"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html">Home Page</a></li>
          <li><a href="A_Login.jsp">Airport Admin</a></li>
          <li class="active"><a href="U_Login.jsp">User</a></li>
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
	  
	  <h2><span class="style6">Add Travelling Details !!! </span></h2>
	  <form name="s" action="U_Add_Travelling_Details1.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top"> 
            <label for="name"><span class="style45"><span class="style31"><br />
            (<span class="style6">*</span>) Required </span><br />
            </span></label>
            <table width="517" height="459" border="0" cellpadding="2" cellspacing="2">
              <tr>
                <td width="126" bgcolor="#FF0000"><span class="style33 style9">
                  <label for="label"><strong>Passenger Name *</strong></label>
                </span></td>
                <td width="377" bgcolor="#FF0000"><span class="style45">
                  <input name="userid" class="text" id="name" value="<%=(String)application.getAttribute("uname")%>" readonly size="30" />
                </span></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><span class="style33 style9">
                  <label for="label"><strong>Travelling Date  *</strong></label>
                </span></td>
                <td bgcolor="#FF0000"><span class="style45">
                  <input name="td" type="text" class="text" id="td" size="30" placeholder="dd/mm/yyyy"/>
                </span></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><span class="style33 style9">
                  <label for="label"><strong>Boarding Station <strong> *</strong></strong></label>
                </span></td>
                <td bgcolor="#FF0000"><span class="style45">
                  <input name="bs" class="text" id="email" size="30" />
                </span></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><span class="style33 style9">
                  <label for="label"><strong>Boarding Time  <strong>*</strong> </strong></label>
                </span> </td>
                <td bgcolor="#FF0000"><span class="style45">
                  <input name="bt" class="text" id="mobile" size="30" />
                </span></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><span class="style33 style9">
                  <label for="label"><strong>Departure Station <strong>*</strong> </strong> </label>
                </span></td>
                <td bgcolor="#FF0000"><span class="style45">
                  <input name="ds" class="text" id="dob" size="30" />
                </span></td>
              </tr>
              
              <tr>
                <td bgcolor="#FF0000"><span class="style33 style9">
                  <label for="gender"><strong>Departure Time <strong>*</strong> </strong> </label>
                </span></td>
                <td bgcolor="#FF0000"><input type="text" name="dt" /></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><span class="style33 style9">
                  <label for="gender"><strong>Departure Date <strong>*</strong> </strong> </label>
                </span></td>
                <td bgcolor="#FF0000"><input type="text" name="dpt" /></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><span class="style33 style9">
                  <label for="gender"><strong>Select Gender * </strong></label>
                </span> </td>
                <td bgcolor="#FF0000"><span class="style38">
                  <select id="s1" name="gender" style="width:124px;" class="text">
                    <option>--Select--</option>
                    <option>MALE</option>
                    <option>FEMALE</option>
                  </select>
                </span></td>
              </tr>
			  <tr>
                <td bgcolor="#FF0000"><span class="style33 style9">
                  <label for="gender"><strong>Passenger Address* </strong></label>
                </span> </td>
                <td bgcolor="#FF0000"><textarea name="pa" cols="20" rows="5"><%=(String)application.getAttribute("address")%></textarea></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><p class="style10">Passport Number</p></td>
                <td bgcolor="#FF0000"><input type="text" name="pn" /></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><p class="style10">Airport Name</p></td>
                <td bgcolor="#FF0000"><input type="text" name="an" /></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><p class="style10">Airplane Name</p></td>
                <td bgcolor="#FF0000"><input type="text" name="apname" /></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><p class="style10">Seat Number</p></td>
                <td bgcolor="#FF0000"><input type="text" name="sn" /></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><span class="style33 style9">
                  <label for="label"><strong>Select Airplane Image <strong> *</strong> </strong></label>
                </span></td>
                <td bgcolor="#FF0000"><input name="pic" type="file" class="text " id="pic" />                </td>
              </tr>

              <tr>
                <td colspan="2" bgcolor="#FF0000"><div align="center">
                    <input name="submit" type="submit" value="ADD DETAILS" style="width:170px;height:40px;font-weight:bold;background-color:#0099FF;border-radius:10%;" />
                </div></td>
              </tr>
            </table>
            <p align="right"><a href="U_Main.jsp" class="style3"><strong>Back</strong></a></p>
        </form>
	  <p align="center">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Sidebar Menu</h2>
          <div class="style3"></div>
          <ul class="sb_menu style7">
           
            <li><a href="U_Profile.jsp"> Home</a></li>
            <li><a href="U_Login.jsp">Logout</a></li>
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
