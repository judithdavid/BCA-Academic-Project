<%@include file="AdminHeader.jsp" %>

<style>
.container1 {
  position: relative;
  width: 100%;
  overflow: hidden;
  padding-top: 56.25%; /* 16:9 Aspect Ratio */
}

.responsive-iframe {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  width: 100%;
  height: 100%;
  border: none;
}
</style>
 <%
        String Url = request.getParameter("id");
       
    %>
<div class="container1"> 
  <iframe class="responsive-iframe" src="<%=Url%>"></iframe>
</div>


<%@include file="Footer.jsp" %>