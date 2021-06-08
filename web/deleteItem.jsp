<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
int ID = Integer.parseInt(request.getParameter("ID"));

            String mysqlCon = "jdbc:mysql://localhost/mealputra";
 	    String user = "root";
            String pass = "";
try
   {
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection(mysqlCon, user, pass);
    Statement st=connection.createStatement();
    int i=st.executeUpdate("DELETE FROM orders WHERE order_id="+ID);
    out.println("Data Deleted Successfully!");
    response.sendRedirect("order.jsp");
   }
   catch(Exception e)
                     {
                     System.out.print(e);
                     e.printStackTrace();
                     }
%>
