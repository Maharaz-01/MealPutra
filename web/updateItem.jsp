<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
int ID = Integer.parseInt(request.getParameter("ID"));

//String hostname = "172.16.60.13";
            
            String serverAddress = "jdbc:mysql://localhost/mealputra";
            String user="root";
            String pass="";

try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(serverAddress, user, pass);
statement=connection.createStatement();
String sql ="select * from orders where order_id="+ID;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Change Order Quantity </title>

<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<nav>
  <div class="container">

    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse">


      <ul class="nav navbar-nav navbar-right hidden-sm">

      </ul>
    </div>
    <!-- /.navbar-collapse -->

  <!-- /.container-fluid -->
</nav>
<div class="container" align="center">
<h1>Change Order Quantity</h1>
<form method="post" action="update-process.jsp">
<input type="hidden" name="Email" value="<%=resultSet.getString("Email") %>">
<br>
</div>
<div class="container">
<div class="col-md-6">
<h2>Current Information</h2>
<br>

<p><strong>Username :</strong>
<%=resultSet.getString("username") %></p>

<p><strong>Name :</strong>
<%=resultSet.getString("name") %></p>

<p><strong>Quantity :</strong>
<%=resultSet.getString("quantity") %></p>

<p><strong>Message :</strong>
<%=resultSet.getString("message") %></p>

<p><strong>Email :</strong>
<%=resultSet.getString("email") %></p>

<p><strong>Address:</strong>
<%=resultSet.getString("address") %></p>

</div>
<div class="col-md-6">
<h2>Change Quantity</h2><br>
<strong>Quantity :</strong>
<input type="text" name="check_in" value="<%=resultSet.getString("quantity") %>">
<br><br>



<input type="submit" value="Submit">
</div>
</div>

</form>
<br>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>
