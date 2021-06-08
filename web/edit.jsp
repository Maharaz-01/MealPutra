<%@ include file = "Connection1.jsp" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <form class="" action="index.html" method="post">
      <%
      Connection conn=null;
      PreparedStatement pstmt=null;
      ResultSet rs=null;
      conn=getConnected();
      Statement st = conn.createStatement();
      String Email=request.getParameter("email");
      String data="select * from orders where email='"+Email+"'";
      rs=st.executeQuery(data);
      while(rs.next()) {
      %>
      <input type="text" name="" value="">
        <div class="form-group">
          <label for="">name</label>
          <input type="text" name="" value="">
        </div>
        <div class="form-group">
          <label for="">quantity</label>
          <input type="text" name="" value="">
        </div>
        <div class="form-group">
          <label for="">message</label>
          <input type="text" name="" value="">
        </div>
        <div class="form-group">
          <label for="">email</label>
          <input type="text" name="" value="">
        </div>
        <div class="form-group">
          <label for="">address</label>
          <input type="text" name="" value="">
        </div>
        <div class="form-group">
          <label for="">username</label>
          <input type="text" name="" value="">
        </div>
      
        <%
      }
      %>
    </form>
  </body>
</html>
