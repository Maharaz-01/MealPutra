<%@ include file = "Connection1.jsp" %>
<%@ page import ="java.sql.*" %>
<%

    String food = request.getParameter("food");
    String email = request.getParameter("email");
    String qty = request.getParameter("quantity");
    String message = request.getParameter("message");
    String username = request.getParameter("username");
    String address = request.getParameter("address");
    Connection conn=null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;
    conn=getConnected();
    Statement st = conn.createStatement();
    int i = st.executeUpdate("insert into orders (name, quantity, message,  email,username,address) values ('" + food + "','" + qty + "','" + message + "','" + email + "','" +
    username + "','" + address +"' )" );
    if (i > 0) {
        session.setAttribute("email", email);
      response.sendRedirect("completedMessage.html");
    }
    else {
        response.sendRedirect("register.html");
    }
%>
