<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Read and Upload Patient Data</title>
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
.style1 {font-size: 24px}
.style14 {color: #0e4369; font-size: 16px; font-weight: bold; }
.style16 {font-size: 12px}
.style28 {color: #5f5f5f}
.style30 {color: #FFFF00}
.style32 {color: #FFFF00; font-weight: bold; }
.style33 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}

</script>

</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1">A Block chain Based System for Healthcare Digital Twin</a></h1>
      </div>
      <div class="searchform"></div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="d_DataMain.jsp"><span>Brad</span></a></li>
          <li><a href="d_DataLogin.jsp"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style33">Read Sensor Data and Upload  Patient Report !!!   </h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <form id="form1" name="form1" method="post" action="B_Upload1.jsp">
            <table width="648" border="0" cellpadding="0"  cellspacing="0" align="center">
              <tr>
                <td width="286" height="35" bgcolor="#FF0000"><div align="left" class="style30"><strong>Patient Name </strong></div></td>
                <td><input type="text" name="pname" /></td>
              </tr>
              <tr>
                <td height="38" bgcolor="#FF0000"><div align="left" class="style30"><strong>Medical History </strong></div></td>
                <td><textarea name="mh"></textarea></td>
              </tr>
              <tr>
                <td height="33" bgcolor="#FF0000"><div align="left" class="style30"><strong>Disease</strong></div></td>
                <td><select name="dis">
                  <option>---Select---</option>
                  <option>H1N1</option>
                  <option>Flue</option>
                  <option>Covid19</option>
                  <option>Fever</option>
                  <option>Plague</option>
                  <option>Typhoid</option>
                  <option>Dengue</option>
                  <option>Malaria</option>
				  <option>Cancer</option>
				  <option>Diabetic</option>
                  <option>Others</option>
                </select>
                </td>
              </tr>
              <tr>
                <td height="30" bgcolor="#FF0000"><div align="left" class="style30"><strong>Age</strong></div></td>
                <td><input type="text" name="age" /></td>
              </tr>
              <tr>
                <td height="29" bgcolor="#FF0000"><div align="left" class="style30"><strong>Gender</strong></div></td>
                <td><select name="gender">
				<option>---Select---</option>
                  <option>Male</option>
                  <option>Female</option>
                </select>                </td>
              </tr>
              <tr>
                <td height="31" bgcolor="#FF0000"><div align="left" class="style30"><strong>Address</strong></div></td>
                <td><textarea name="address"></textarea></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><span class="odd style14 style28"><span class="odd style11 style16 style30"> Select Report:</span></span></td>
                <td><input required="required" type="file" name="t42" id="file"  onchange="loadFileAsText()" /></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000" class="odd style14 style28"><span class="odd style11 style16 style30">Report  Name :</span> </td>
                <td><input required="required" name="tt" type="text" id="t42" size="49"/></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><span class="style32">Report Contents </span></td>
                <td width="356"><textarea name="text" id="textarea" cols="50" rows="15"></textarea></td>
              </tr>
              
              <tr>
                <td bgcolor="#FF0000"><span class="odd style11 style16 style30"><strong>Trapdoor :</strong></span></td>
                <td><input name="t4" type="text" id="t4" size="49" value="" readonly="readonly" /></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><input type="submit" name="Submit" value="Encrypt" /></td>
              </tr>
            </table>
            <p align="right">&nbsp;</p>
            <p align="right"><a href="B_Brad_Main.jsp">Back</a></p>
          </form>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="B_Brad_Main.jsp">Home</a></li>
            <li><a href="B_Brad_Login.jsp">Logout</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
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
