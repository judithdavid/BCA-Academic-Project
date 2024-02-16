<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page import="dbconnection.dbconnection"%>
<%

    dbconnection con = new dbconnection();

    String qid = (String) session.getAttribute("QID");
    String ans = request.getParameter("ans");
    String userid = (String) session.getAttribute("USERID");

    String sqry = "SELECT COUNT(*) AS COUNT FROM `userans` WHERE `qid`='" + qid + "' AND `uid`='" + userid + "'";
    System.out.println("qry" + sqry);
    Iterator it = con.getData(sqry).iterator();
    if (it.hasNext()) {

        Vector v = (Vector) it.next();
        int max_vid = Integer.parseInt(v.get(0).toString());
        System.out.println(max_vid);

        if (max_vid == 0) {
            String qry = "INSERT INTO `userans`(`qid`,`ans`,`uid`)VALUES('" + qid + "','" + ans + "','" + userid + "')";
            System.out.println("ins" + qry);

            if (con.putData(qry) > 0) {
%>
<script>
    alert("Data Updated Successfully");
    window.location = "../UserViewAllQue.jsp";
</script>
<%
} else {
%>
<script>
    alert("Failed to update !!");
    window.location = "../UserViewAllQue.jsp";
</script>
<%
    }

} else {

    String dqry = "update `userans` set `ans`='" + ans + "' where `qid`='" + qid + "'";
    System.out.println("del" + dqry);
    if (con.putData(dqry) > 0) {
        System.out.println("success");
%>
<script>
    alert("Data Updated Successfully");
    window.location = "../UserViewAllQue.jsp";
</script>
<%
} else {
%>
<script>
    alert("Failed to update !!");
    window.location = "../UserViewAllQue.jsp";
</script>
<%
            }

        }
    }

%><a href="../UserViewAllQue.jsp"