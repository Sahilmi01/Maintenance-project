<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>
<HEAD>
<LINK href="styles.css" type="text/css" rel="stylesheet">
<script LANGUAGE="Javascript" SRC="validate.js"></script>
</HEAD>
<jsp:include page="MultiLevelmenu.htm"/><br><br><br>
<BODY class=SC>
<BR><BR>
<%

	Connection con;
	ResultSet rs=null;
	Statement stmt=null;
	String Value = request.getParameter("userid");
	try{
			
			//Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			//con = DriverManager.getConnection("jdbc:odbc:PMS","root","");
			Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pms?user=root&password=root");
			stmt =  con.createStatement();
				String Query = "Delete from login where userid='"+Value+"'";
			int result = stmt.executeUpdate(Query);
			if( result > 0)	{
				%><h3 align=center>Deleted from the database sucessfully</h3><%
			}
			else{
				%><h3 align=center>Error in deletion..please try again</h3><% 
			}
		con.close();
		}catch(Exception e){%><%=e%><%}
%>
</BODY>

