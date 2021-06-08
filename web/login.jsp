<%@ include file = "Connection1.jsp" %>
<%@ page import ="java.sql.*" %>
<%
    String email = request.getParameter("email");
    String pwd = request.getParameter("pwd");
    Connection conn=null;
    conn=getConnected();

    Statement st = conn.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from student where email='" + email + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("email", email);

        response.sendRedirect("home.html");

    } else {
        out.println("Invalid password <a href='login.html'>try again</a>");
    }
%>
