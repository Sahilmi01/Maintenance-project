<!--
	File : Report.jsp
	Purpose : This jsp displays the home page containing link to change user's password
			
-->

<html>
<%@ page language="java" %>
<%@ page session="true" %>
<%@page import="java.sql.*,java.io.*,java.util.Random"%>
<SCRIPT LANGUAGE="JavaScript">
<!--
history.go(+1);

//-->
</SCRIPT>
<Head>
	<LINK href="styles.css" type="text/css" rel="stylesheet">
</head>
<jsp:include page="MultiLevelmenu.htm"/><br><br><br><br><br><br><BR><BR><BR>
<body Class=SC>
<style>
body { 
	   background-image: url("Images/logo.jpg");
	   background-repeat: no-repeat,repeat;
	   background-size: cover;
	   }
</style> 

<Title>Reports</Title>
<font face="Times New ROman" color=white >
<center>




<!--Retreiving user id using Session-->

<% String Userid=(String)session.getAttribute("userr");%>

<h3 class=report align=right><FONT COLOR="black">Dear</FONT> <u><FONT  COLOR="black"><%=Userid%></FONT></u><FONT  COLOR="black">,<BR><BR> Please navigate through the menu or links provided</FONT></h3><br>



</center>
</font>
<p align="right">
<A href="ChangePassword1.jsp">Change Password </A><BR><BR>
</p>
</body>
</html>