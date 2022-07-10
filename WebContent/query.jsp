
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="car.Audi"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>data stored page</title>
</head>
<body>
<table>
<tr>
<th>Name</th>
<th>passcode</th>
</tr>
</table>

<%
Statement st=null;
ResultSet rs=null;

try
{

Connection conn=Audi.getconnection();
st=conn.createStatement();

String mysql="Select * from data";
rs=st.executeQuery(mysql);


while(rs.next())
{%>
<table><tr>
<td><%=rs.getString("userid")%></td>
<td><%=rs.getString("passcode")%></td>
</tr>
</table>
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