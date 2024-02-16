<%@page import="java.util.Iterator"%>
<%@page import="java.util.Vector"%>
<%@page import="dbconnection.dbconnection" %>
<%
    dbconnection con=new dbconnection();
    String qu=request.getParameter("qu");
     String a=request.getParameter("a");
     String b=request.getParameter("b");
      String c=request.getParameter("c");
     String d=request.getParameter("d");
      String age=request.getParameter("age");
       String gender=request.getParameter("gender");
    String qry="INSERT INTO `questions`(`question`,`a`,`b`,`c`,`d`,`age`,`gender`)VALUES('"+qu+"','"+a+"','"+b+"','"+c+"','"+d+"','"+age+"','"+gender+"')";
if(con.putData(qry)>0)
{
    %>
    <script>
        alert("New Question Added Successfully");
         window.location="../AdminAddQuestions.jsp";
         </script>
         <%
             }
else
{
    %>
    <script>
        alert("Failed to add new Question");
        window.location="../AdminAddQuestions.jsp";
        </script>
        <%
}
%>








   
        