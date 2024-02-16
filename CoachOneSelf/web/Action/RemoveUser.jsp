<%@page import="dbconnection.dbconnection"%>
<%
    dbconnection con = new dbconnection();

    String id = request.getParameter("id");

    String qry = "DELETE FROM `login` WHERE `uid`='" + id + "'";

    if (con.putData(qry) > 0) {
%>
<script>
    alert("Removed user Successfully");
    window.location = "../AdminViewUsers.jsp";
</script>
<%
} else {

%>
<script>
    alert("Failed");
    window.location = "../AdminViewUsers.jsp";
</script>
<%    }

%>