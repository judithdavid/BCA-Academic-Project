<%-- 
    Document   : loginaction
    Created on : Jan 18, 2020, 2:31:06 PM
    Author     : HP
--%>


<%@page import="dbconnection.dbconnection"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    dbconnection con = new dbconnection();
    String uname = request.getParameter("email");
    String psw = request.getParameter("Password");
    String n, userid, age, gender;
    String qry = "select * from login where uname='" + uname + "'and psw='" + psw + "'";
    System.out.println("qry::" + qry);
    Iterator i = con.getData(qry).iterator();
    if (i.hasNext()) {
        Vector v = (Vector) i.next();
        n = v.get(4).toString();
        userid = v.get(1).toString();
        session.setAttribute("USERID", userid);
        age = v.get(5).toString();
        session.setAttribute("AGE", age);
        gender = v.get(6).toString();
        session.setAttribute("GENDER", gender);
        if (n.trim().equals("admin")) {
            response.sendRedirect("../AdminHome.jsp");
        } else if (n.trim().equals("user")) {
%>
<script>
    alert("Login Successful");
    window.location = "../UserHome.jsp";
</script>
<%
    } else {
        System.out.println("invalid user name or password");
    }
} else {
%> 
<script>
    alert("Invalid username or password ||Request in progress  ");
    window.location = "../Login.jsp";
</script>
<%
    }


%>
