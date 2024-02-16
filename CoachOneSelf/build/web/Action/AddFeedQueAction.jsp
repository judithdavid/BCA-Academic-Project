<%@page import="dbconnection.dbconnection"%>
<%
  
dbconnection con=new dbconnection();

String qu=request.getParameter("qu");
String a=request.getParameter("a");
String b=request.getParameter("b");


String qry="INSERT INTO `feedback`(`question`,`a`,`b`)VALUES('"+qu+"','"+a+"','"+b+"')";
if (con.putData(qry)>0) {
    
    %>
<script>
    alert("New Question Added Successfully");
    window.location = "../AdminAddFeedQue.jsp";
</script>
<%
    }
else
{
%>
<script>
    alert("Failed to add new question");
    window.location = "../AdminAddFeedQue.jsp";
</script>
<%
}   %>
<script>
    alert("New Question Added Successfully");
    window.location = "../AdminAddFeedQue.jsp";
</script>


%>