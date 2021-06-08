<%@ page import ="java.sql.*" %>
<%
    String matric = request.getParameter("matric");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String pnum = request.getParameter("pnum");
    String pwd = request.getParameter("pwd");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mealputra","root","");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into student(matric_no,first_name,last_name,email,phone_no, password) values ('" + matric + "','" + fname + "','" + lname + "','" + email + "','" + pnum + "','" + pwd + "')");
    if (i > 0) {
        session.setAttribute("email",email);
        out.print("Registration Successfull!"+ "<a href='login.html'>Go to Login</a>");
    }
    else {
        response.sendRedirect("register.html");
    }
%>
