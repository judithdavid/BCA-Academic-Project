
<%@page import="dbconnection.dbconnection"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@include file="UserHeader.jsp" %>

<section class="w3l-team" id="team">
    <div class="team-block py-5">
        <div class="container py-lg-5">
            <div class="row justify-content-center text-center">
                <div class="col-md-8">
                    <div class="section-heading mb-sm-5 mb-4">
                        <h3 class="title-style mb-2">Images</h3>
                        <p class="lead">

                        </p>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                <%
                    dbconnection con = new dbconnection();
                    String n;
                    String Uid = (String) session.getAttribute("USERID");
                    String qry = "SELECT i.* FROM `images` i,`sendimg` s,`login` l WHERE i.`imid`=s.`imid` AND s.`uid`=l.`uid` AND l.`uid`='" + Uid + "'";
                    System.out.println("qry" + qry);
                    Iterator i = con.getData(qry).iterator();

                    if (i.hasNext()) {
                        while (i.hasNext()) {
                            Vector v = (Vector) i.next();
                            n = v.get(0).toString();
                            System.out.println(n);
                %>

                <div class="col-lg-4 col-sm-6">
                    <div class="box16">

                        <a href=""><img src="PrImg/<%=v.get(5)%>" alt=""
                                        class="img-fluid img-responsive" /></a>
                        <div class="box-content">
                            <h5 class="title-style"><%=v.get(1)%></h5>
                            <span class="post"><%=v.get(4)%></span>
                           

                        </div>
                    </div>
                </div>
                <div>
                    &nbsp;
                    &nbsp;
                    &nbsp;
                </div>




                <%                     }

                } else {
                %> <img src="assets/images/NoRecordFound.png"> <%
}
                %>

            </div>
        </div>
    </div>
</section>

<%@include file="Footer.jsp" %>