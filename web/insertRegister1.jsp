<!-- Begin: insertRegister.jsp -->
<%@ include file = "Connection1.jsp" %>
<%@ page import="java.util.*" %>
<%
 String Matric = request.getParameter("matric");
 String FNAME = request.getParameter("fname");
 String LNAME = request.getParameter("lname");
 String EMAIL = request.getParameter("email");
 String Phone = request.getParameter("phone");
 String Password = request.getParameter("pwd");




Connection conn=null;
PreparedStatement pstmt=null;
ResultSet rs=null;
conn=getConnected();
Statement st = conn.createStatement();

//step3 create the statement object
//String sql="INSERT INTO REGISTER VALUES('"+EMAIL +"','"+FNAME+"','"+LNAME+"','"+Password +"')";
int i = st.executeUpdate("insert into register(matric, fname, lname, email,  password) values ('" + Matric + ",'" + FNAME + "','" + LNAME + "','" + EMAIL + "','" + Phone + ",'" + Password + "')");


//step4 execute query

if (i > 0) {
    session.setAttribute("email", EMAIL);

    response.sendRedirect("login.html");
}
else {
    response.sendRedirect("register.html");
}

%>


</body>
</html>
