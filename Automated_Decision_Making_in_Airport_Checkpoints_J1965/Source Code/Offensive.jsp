 <%@ include file="connect.jsp"%>

<%
		   			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="", pos="Offensive",s22="" ;
	int i=0,poscnt=0,negcnt=0,strcnt=0;
	int count1=0;
	String ftype="Offensive";
	
	try
	{
			String sql3="select * from trackluggage";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s1=rs3.getString(2); //pname
			   s2=rs3.getString(3); //td
			   s3=rs3.getString(4); // bs
			   s4=rs3.getString(4); // bt

			   s7=rs3.getString(11).toLowerCase();
			   int count=0;
			%>
<style type="text/css">
<!--
.style2 {
	font-weight: bold;
	color: #FFFFFF;
}
.style4 {font-weight: bold}
.style5 {color: #FF0000}
-->
</style>
        <table width="778" border="1">
				  
				  <tr>
				   <td width="94" height="33" bgcolor="#FFFF00" ><div align="left" class="style4 style35 style2 style11 style12 style5">
						<div align="center"><strong>Passenger Name </strong></div>
					</div></td>
				  <td width="94" bgcolor="#FFFF00" ><div align="left" class="style4 style35 style2 style11 style12 style5">
						<div align="center"><strong>Travelling Date</strong></div>
					</div></td>
					<td width="127" bgcolor="#FFFF00" ><div align="left" class="style4 style35 style2 style11 style12 style5">
						<div align="center"><strong>Boarding Station </strong></div>
					</div></td>
					<td width="168" bgcolor="#FFFF00" ><div align="left" class="style4 style36 style2 style11 style12 style5">
						<div align="center" class="style13">Boarding Time </div>
					</div></td>
					<td width="197" bgcolor="#FFFF00"><div align="left" class="style37 style4 style12 style11 style5">
						<div align="center">Comments</div>
					</div></td>
				  </tr>
				 
				  <%
			   
			       String sql1="select * from filter where ftype='"+pos+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2).toLowerCase();
			   			 	
							  if ((s7.contains(t2)))
									{ 
	
			                 count1++;
									 %>
							  <tr>
							  <td width="94" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style5 style11 style14"><strong><%=s1%></strong></div></td>
								<td width="127" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style11 style14"><strong> <%=s2%></a></strong></div></td>
								<td width="127" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style11 style14"><strong> <%=s3%></a></strong></div></td>
								
								<td width="168" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style5 style11 style14"><strong><%=s4%></strong></div></td>
								<td width="197" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style5 style11 style14"><strong><%=s7%></strong></div></td>
		  </tr>
							  				
	    <%   					}

					      }
			      }
			       
   			
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table>
        