<%@ page import="java.sql.*"%>

<%!
Driver driver = null;
String driverUsed = "com.mysql.jdbc.Driver";
String serverAddress = "jdbc:mysql://localhost/mealputra";
String user="root";
String pass="";

public Connection getConnected() throws Exception{
Connection conn = null;
try {
if (driver==null)
driver = (Driver)Class.forName(driverUsed).newInstance();
conn = DriverManager.getConnection(serverAddress, user, pass);
return conn;
}
catch (Exception e){
 throw new Exception("Cannot connect to server" + e);
//throw new Exception( "<script language=\"javascript\">window.alert('Cannot connect to the orafsktm database.');</script>" + exception);
}
}
%>
