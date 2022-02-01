<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>
<html>
<HEAD>
	<LINK href="styles.css" type="text/css" rel="stylesheet">
</HEAD>
<jsp:include page="MultiLevelmenu.htm"/><br><br><br>
<BODY class=SC>
<FORM Name="DelEmp" ACTION="">
<%

	Connection con;
	ResultSet rs=null;
	Statement stmt=null;
	int result=0;
	String EmpNo=request.getParameter("EmpNo");
	try{
			
			//Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			//con = DriverManager.getConnection("jdbc:odbc:pms","root","");
			Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pms?user=root&password=root");
			stmt =  con.createStatement();
			String Query = "Delete from employees where EmpNo="+EmpNo;
System.out.println("-----------------------connected"+Query);

			result = stmt.executeUpdate(Query);
			if( result > 0)	{
				%>
				<h3 align=center>Successfully deleted employee record from database</h3>
				<P align=center><A HREF="DelEmp.jsp">Delete another record</A></P>
				<%
			}
			else{
				%>
				<h3 align=center>Error in deleting..please try again</h3>
				<P align=center><A HREF="DelEmp.jsp">Try again</A></P>
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
</html>

