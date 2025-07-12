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
	  
	  <h2><span class="style6">Added Travelling Details !!! </span></h2>
	   <%@ include file="connect.jsp" %>
            <%@ page import="java.io.*" %>
            <%@ page import="java.util.*" %>
            <%@ page import="com.oreilly.servlet.*" %>
     
            <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String paramname=null,pname="",td="",bs="",bt="",ds="",dt="",gender="",pa="",pn="",image=null,apname=null,an = "",sn = "",dpt="",bin = "";
				
					FileInputStream fs=null;
					
					File file1 = null;	
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("userid"))
							{
								pname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("td"))
							{
								td=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("bs"))
							{
								bs=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("bt"))
							{
								bt=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("ds"))
							{
								ds=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("dt"))
							{
								dt=multi.getParameter(paramname);
							} 
							if(paramname.equalsIgnoreCase("dpt"))
							{
								dpt=multi.getParameter(paramname);
							} 
							
							if(paramname.equalsIgnoreCase("gender"))
							{
								gender=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pa"))
							{
								pa=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pn"))
							{
								pn=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("an"))
							{
								an=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("apname"))
							{
								apname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("sn"))
							{
								sn=multi.getParameter(paramname);
							}
							
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) 
								{
									if (i != -1)
									 {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
							
						                }
									}	
									
								}
								
							}		
						}
						
						
		
						FileInputStream fs1 = null;
						
						
						
						
			 			String query1="select * from passenger  where pname='"+pname+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
            <br/>
            <br />
            <br />
            <p align="center" class="style24 style31 style6">User Name Already Exist..</p>
            <br />
            <p align="center"><span class="style52"><a href="U_Register.jsp" class="style10 style52 style6">Back</a></span></p>
            <p align="center">
              <%
				
					   }
					   else
					   {
					   
					  String status = "Waiting";
PreparedStatement ps=connection.prepareStatement("insert into passenger(pname,td,bs,bt,ds,dt,dpt,gender,address,pn,an,apn,sn,image) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,pname);
						ps.setString(2,td);
						ps.setString(3,bs);	
						ps.setString(4,bt);
						ps.setString(5,ds);
						ps.setString(6,dt);
						ps.setString(7,dpt);
						ps.setString(8,gender);
						ps.setString(9,pa);
						ps.setString(10,pn);
						ps.setString(11,an);
						ps.setString(12,apname);
						ps.setString(13,sn);
						ps.setBinaryStream(14, (InputStream)fs, (int)(file1.length()));	
						
						if(f == 0)
							ps.setObject(8,null);
						else if(f == 12)
						{
							fs1 = (FileInputStream)list.get(0);
							ps.setBinaryStream(8,fs1,fs1.available());
						}	
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
            </p>
            <br/>
            <p align="center" class="style42 style25 style32 style8">Travelling Details Registration Successful..</p>
            <br />
            <p align="center"><a href="U_Main.jsp" class="style10 style52"><span class="style8">Back</span>..</a></p>
            <%
			
					}}}
					catch (Exception e) 
					{
						out.println(e);
					}
			%>
	  
	  
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
