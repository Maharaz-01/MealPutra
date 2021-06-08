<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%!String hostname = "localhhost";%>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String mysqlCon = "jdbc:mysql://localhost/mealputra";%>
<%!String user = "root";%>
<%!String pass = "";%>
<%
int ID = Integer.parseInt(request.getParameter("ID"));


String check_in=request.getParameter("check_in");

Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(mysqlCon,user,pass);
String sql="Update orders set quantity=?,quantity=? where  order_id="+ID;
ps = con.prepareStatement(sql);



ps.setString(1, check_in);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Data Updated Successfully");
response.sendRedirect("modify.jsp");
}



}
catch(SQLException sql)
{

//response.sendRedirect('booking.jsp');
}

%>
