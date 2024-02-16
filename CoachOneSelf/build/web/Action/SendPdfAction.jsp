<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page import="dbconnection.dbconnection"%>
<%
  
dbconnection con=new dbconnection();
String Uid = (String) session.getAttribute("USERID");
String id=request.getParameter("id");
String insertqry = "SELECT COUNT(*) AS COUNT FROM `senddoc` WHERE `did`='"+id+"' AND `uid`='"+Uid+"'";
    System.out.println(insertqry);
    Iterator it = con.getData(insertqry).iterator();
    if (it.hasNext()) {
        Vector v = (Vector) it.next();
        int max_vid = Integer.parseInt(v.get(0).toString());
        System.out.println(max_vid);
        if (max_vid == 0) {
String qry="INSERT INTO `senddoc`(`did`,`uid`)VALUES('"+id+"','"+Uid+"')";
if (con.putData(qry)>0) {
    
    %>
<script>
    alert("Document Sent");

    window.location = "../AdminViewPdf.jsp";
</script>
<%
        
    }
else
{
%>
<script>
    alert("Failed To Send");

    window.location = "../AdminViewPdf.jsp";
</script>
<%
}
}
else
{
%>
<script>
    alert("Document Already Send");

    window.location = "../AdminViewPdf.jsp";
</script>
<%
}
}

%>