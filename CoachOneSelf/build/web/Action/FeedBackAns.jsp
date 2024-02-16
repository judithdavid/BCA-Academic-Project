<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page import="dbconnection.dbconnection"%>
<%

    dbconnection con = new dbconnection();

    String qid = (String) session.getAttribute("FID");
    String ans = request.getParameter("ans");
    String userid = (String) session.getAttribute("USERID");

    String sqry = "SELECT COUNT(*) AS COUNT FROM `feedans` WHERE `fid`='" + qid + "' AND `uid`='" + userid + "'";
    System.out.println("qry" + sqry);
    Iterator it = con.getData(sqry).iterator();
    if (it.hasNext()) {

        Vector v = (Vector) it.next();
        int max_vid = Integer.parseInt(v.get(0).toString());
        System.out.println(max_vid);
        if (max_vid == 0) {
            String qry = "INSERT INTO `feedans`(`uid`,`fid`,`ans`)VALUES('" + userid + "','" + qid + "','" + ans + "')";
            System.out.println("ins" + qry);

            if (con.putData(qry) > 0) {
%>
<script>
    alert("Feedback Added Successfully");
    window.location = "../UserViewFeed.jsp";
</script>
<%
} else {
%>
<script>
    alert("Failed to Add !!");
    window.location = "../UserViewFeed.jsp";
</script>
<%
    }

} else {

    String dqry = "update `feedans` set `ans`='" + ans + "' where `fid`='" + qid + "'";
    System.out.println("del" + dqry);
    if (con.putData(dqry) > 0) {
        System.out.println("success");
%>
<script>
    alert("Feedback Updated Successfully");
    window.location = "../UserViewFeed.jsp";
</script>
<%
} else {
%>
<script>
    alert("Failed to update !!");
    window.location = "../UserViewFeed.jsp";
</script>
<%
            }

        }
    }

%><a href="../UserViewFeed.jsp"