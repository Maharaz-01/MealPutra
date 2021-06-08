<%@ include file = "Connection1.jsp" %>
<%@ page import ="java.sql.*" %>
<%


    String type = request.getParameter("type");
    String fname = request.getParameter("card");
    String fname = request.getParameter("amount");

    Connection conn=null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;
    conn=getConnected();
    Statement st = conn.createStatement();
    int i = st.executeUpdate("insert into payment(type card ) values ('" + checkin + "','" + checkout + "','" + type + "','" + fname + "','" +
    lname + "','" + email +"' )" );
    if (i > 0) {
        session.setAttribute("email", email);
      response.sendRedirect("payment.html");
    }
    else {
        response.sendRedirect("home.html");
    }
%>
