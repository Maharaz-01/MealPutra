<%@ include file = "Connection1.jsp" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Table order</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap4.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome1-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate4.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select1/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar1/perfect-scrollbar.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util4.css">
	<link rel="stylesheet" type="text/css" href="css/main4.css">
<!--===============================================================================================-->
</head>
<body>

	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver1 m-b-110">
					<h3>Manage my Orders</h3>
                                        <br> </br>
					<a href="makeorder.html"> Make a new Order</a>
                                        <br> </br>
					<table data-vertable="ver1">
						<thead>
							<tr class="row100 head">

								<th class="column100 column2" data-column="column2">Order ID</th>
								<th class="column100 column3" data-column="column3">Dish</th>
								<th class="column100 column4" data-column="column4">Quantity</th>
								<th class="column100 column5" data-column="column5">Message</th>
								<th class="column100 column6" data-column="column6">Email</th>
								<th class="column100 column7" data-column="column7">Username</th>
								<th class="column100 column8" data-column="column8">Address</th>
								<th class="column100 column8" data-column="column8">Action</th>
							</tr>
						</thead>
						<tbody>
				<%
			 Connection conn=null;
			 PreparedStatement pstmt=null;
			 ResultSet rs=null;
			 conn=getConnected();
			 Statement st = conn.createStatement();
			 String data="select * from orders order by order_id desc";
			 rs=st.executeQuery(data);
			 while(rs.next()) {
				 %>

	 <td><%=rs.getString("order_id")%></td>
	 <td><%=rs.getString("name")%></td>
	 <td><%=rs.getString("quantity")%></td>
	 <td><%=rs.getString("message")%></td>
	 <td><%=rs.getString("email")%></td>
	 <td><%=rs.getString("username")%></td>
	 <td><%=rs.getString("address")%></td>
	 <td>
<a href="updateItem.jsp?ID=<%=rs.getString("order_id")%>" <span class="glyphicon glyphicon-eye-open"></span><a>
<a href="deleteItem.jsp?ID=<%=rs.getString("order_id")%>"> <span class="glyphicon glyphicon-trash"></span></p>
</td>
 </tr>
 <%
}
%>

</tbody>
</table>
</div>
</div>
</div>
</div>




<!--===============================================================================================-->
<script src="vendor/jquery4/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/bootstrap/js4/popper.js"></script>
<script src="vendor/bootstrap/js4/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/select1/select2.min.js"></script>
<!--===============================================================================================-->
<script src="js/main4.js"></script>


















	</body>
</html>
