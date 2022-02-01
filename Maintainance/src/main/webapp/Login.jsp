<HTML>

<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.util.*" %>
<head>
<SCRIPT LANGUAGE="JavaScript">
<!--
history.go(+1);

//-->
</SCRIPT>
	<LINK href="styles.css" type="text/css" rel="stylesheet">

</head>
<body>
<style>
body { 
	   background-image: url("Images/background.jpg");
	   background-repeat: no-repeat,repeat;
	   background-size: cover;
	   }
</style> 
<!-- CLASS=SC onload="document.LOGIN.uid.focus();" background="login.jpg" -->		


<center>
<BR><BR>
<FONT FACE="Century Gothic">


<!--Declaration of varaibles-->

<%! String errormsg ;%>
<%! String disluserid ;%>
<%! String dislpwd ;%>

    

<% 
   /*Retreiving user id and password*/

    disluserid = request.getParameter("uid");
    if(disluserid == null)
    disluserid = "";
    dislpwd = request.getParameter("pwd");
    if(dislpwd == null)
    dislpwd = "";
System.out.println("errormsg = "+disluserid);
%>

<!--Retrieve the error from request and display on screen-->

<%  errormsg = request.getParameter("error") ;
    //System.out.println("errormsg = "+errormsg);
    if (errormsg == null)
    {
        //System.out.println("Error messages was null so clearing it..");
        errormsg = " ";
    }
    if(errormsg.equals("blankfields"))
    {
      %>
       <FONT COLOR="white" face=verdana>
       <B>Both the fields are Mandatory.Please fill up both fields.</B><BR><BR>
      <%
    }  
    if(errormsg.equals("invalid"))
    {
      %>
        <FONT COLOR="white" face=verdana>
        <B>Invalid Username and/or Password. Please re-enter.</B> <BR><BR>
        <%
    } 
%>

<BR>
<FORM NAME="LOGIN" ACTION="Validate.jsp" METHOD="POST" align=right>

<marquee><h1 style="color:white;fontface=Times New Roman font-size:39px">  WELCOME TO LOGIN PAGE !!!</h1></marquee>

<TABLE class="notepad" align=center width="40%">
<TR>
	<TD class=row_odd ><B>User Id</B></TD>
	<TD class=row_odd><input TYPE="text" id = "usr" name="uid" size="10" maxlength="8"> 
</TR>
<TR>
	<TD class=row_odd ><B>Password</B></TD>
	<TD  class=row_odd><input TYPE="password" name="pwd" size="10"  maxlength="8">

</TR>
<TR>
<TD class=row_odd ><B></B></TD>
	<TD class=row_odd ><INPUT class= "Button" TYPE=submit name=submit value="Login"/>

	<INPUT class= "Button"  TYPE=reset name=reset value="Reset" /> </TD>

</TR>
</TABLE>

</FORM>
</BODY>
</HTML>
