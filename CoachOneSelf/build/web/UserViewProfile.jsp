
<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page import="dbconnection.dbconnection"%>
<%@include file="UserHeader.jsp" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #f39f21;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}
button:hover, a:hover {
  opacity: 0.7;
}
</style>
</head>
<body>
<h3 style="text-align:center">User Profile</h3>
<div>
    &nbsp;
</div>
<div class="card" style="margin-bottom: 25px;">
    <img src="assets/images/user.png" alt="John" style="width:100%"> 
     <%
        dbconnection con = new dbconnection();
        String userid =  (String) session.getAttribute("USERID");
        String query = "SELECT * FROM `user` WHERE `uid`='" + userid + "'";
        System.out.println(query);
        Iterator i = con.getData(query).iterator();
        while (i.hasNext()) {
            Vector v = (Vector) i.next();
           
    %>
  <h3> <%=v.get(1)%></h3>
  <p class="title"> <%=v.get(5)%></p>
  <p> <%=v.get(2)%></p>
  <p> <%=v.get(6)%></p>
  
  
  <a href="UserViewAllQue.jsp"<p><button>Complete Profile</button></p></a>
  
    <%
        }
    %>
  
  
</div>

</body>
</html>


<%@include file="Footer.jsp" %>