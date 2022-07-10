<%@page import="car.Audi"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mg</title>
</head>
<body>
<%
try
{
	String q=request.getParameter("name");
	String r=request.getParameter("passcode");
	Connection con=Audi.getconnection();
	String s ="insert into data(Userid,Passcode) values(?,?)";
	PreparedStatement ps=con.prepareStatement(s);
	ps.setString(1, q);
	ps.setString(2, r);
	int aa=ps.executeUpdate();
	if(aa>0)
	{
	%>
	<script>
	alert("Register successfully");
	window.location="a8.jsp";
	</script>
	<% 
	}
	else
	{%>
		<script>
		alert("Register Error");
		window.location="a8.jsp";
		</script>
<%	
}
}
catch(Exception ex)
{
	ex.printStackTrace();
}
%>


</body>
</html>