<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>
<html>
<head>
<LINK href="styles.css" type="text/css" rel="stylesheet">
<script type="text/javascript">
function doAction(s)
{
	if(s.value!=""){
		URL="DelEmployee.jsp?EmpNo="+s.value;
		document.DelEmp.action=URL;
		document.DelEmp.submit();
	}
	else{
		alert("Select Employee number to proceed");
	}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="MultiLevelmenu.htm"/><br><br><br>
<BODY class=SC>
<%
	Integer IAuth =(Integer)session.getAttribute("auth");
	int auth= IAuth.intValue();
	System.out.println("===Authentication=="+auth);
if(auth!=0){
	%><H3 align=center><IMG SRC="Images/error.gif" WIDTH="17" HEIGHT="13" BORDER=0 ALT="">You are not authorized to access this page</H3><%
}
else{
%>	
<h2 align=center>Delete Employee</h2>
<h3 align=center>Select Employee number to delete</h3>
<FORM Name="DelEmp" ACTION="">
<Table align=center border=0>
<TR class="Row_Odd">
<TH>Employee Number</TH>
<TD>
<SELECT NAME="EmpNo" onchange="doAction(this)">
<OPTION VALUE="">Emp No</OPTION>
<%

	Connection con;
	ResultSet rs=null;
	Statement stmt=null;
	String EmpNo="";
	int NumRows=0;
	try{
			System.out.println("anil..................");
			//Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			//con = DriverManager.getConnection("jdbc:odbc:pms","root","");
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("anil..................?????????????");
			
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pms?user=root&password=root");
			
			stmt =  con.createStatement();
	System.out.println("-----------------------stmty");
			
			String Query = "Select EmpNo from employees";
		System.out.println("-----------------------connected"+Query);
			rs = stmt.executeQuery(Query);

			while( rs.next())	{
				EmpNo = rs.getString(1);
				NumRows++;
				%>
				<OPTION VALUE="<%=EmpNo%>"><%=EmpNo%></OPTION>
				<%
			}

		con.close();}catch(Exception e){%><%=e%><%}
		
%>
		
				
</SELECT>




</TD>
</TR>
<TR class="Row_Odd">
</TR>
</TABLE>
<%
			if(NumRows==0){
					%><h3 align=center>No Employees to delete</h3><% 
			}
%>
</FORM>
</BODY>

<%
  }
  %>

</html>