<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>

<HEAD>
	<LINK href="styles.css" type="text/css" rel="stylesheet">
</HEAD>
<jsp:include page="MultiLevelmenu.htm"/><br><br><br>
<BODY class=SC>
<FORM Name="DelProj" ACTION="">
<%

	Connection con;
	ResultSet rs=null;
	Statement stmt=null;
	int result=0;
	String ProjectCode=request.getParameter("ProjectCode");
	try{
			
			//Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			//con = DriverManager.getConnection("jdbc:odbc:pms","root","");
			Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pms?user=root&password=root");
			stmt =  con.createStatement();
			String Query = "Delete from Projects where ProjectCode='"+ProjectCode+"'";
			System.out.println(Query);
			result = stmt.executeUpdate(Query);
			if( result > 0)	{
				%>
				<h3 align=center>Successfully deleted Project from database</h3>
				<P align=center><A HREF="DelProj.jsp">Delete another</A></P>
				<%
			}
			else{
				%>
				<h3 align=center>Error in deleting..please try again</h3>
				<P align=center><A HREF="DelProj.jsp">Try again</A></P>
				<% 
			}

		con.close();}catch(Exception e){%><%=e%><%}
		
%>
</SELECT></TD>
</TR>
</TABLE>
<%
			
%>
</FORM>
</BODY>


