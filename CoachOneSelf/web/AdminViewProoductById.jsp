
<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page import="dbconnection.dbconnection"%>
<%@include file="AdminHeader.jsp" %>

<section class="w3l-about-2 py-5">

    <%
        dbconnection con = new dbconnection();
        String n;
        String userid = request.getParameter("id");
        String query = "SELECT * FROM `product` WHERE `pid`='" + userid + "'";
        System.out.println(query);
        Iterator i = con.getData(query).iterator();
        while (i.hasNext()) {
            Vector v = (Vector) i.next();
            n = v.get(0).toString();
            session.setAttribute("SELLERID", n);
    %>

    <div class="container py-md-5 py-4">
        <div class="row align-items-center justify-content-between">
            <div class="col-lg-4 about-2-secs-right mb-lg-0 mb-4 text-center">
                <img src="PrImg/<%=v.get(5)%>" alt="" class="img-fluid img-responsive m-auto" />
            </div>
            <div class="col-lg-6 about-2-secs-left pl-lg-5">
                <h3 class="title-style mb-sm-3 mb-2"><%=v.get(1)%></h3>

                <p><%=v.get(2)%></p>

                <ul class="list-coast mt-4">
                    <li>&#8377; <%=v.get(3)%></li>
                    <li class="ml-3 light-color"><del>&#8377; <%=v.get(6)%></del></li>
                </ul>

                <a class="btn btn-style mt-5" href="<%=v.get(4)%>" target="_blank">Learn More</a>
            </div>
        </div>
    </div>

    <%
        }
    %>

</section>


<%@include file="Footer.jsp" %>





