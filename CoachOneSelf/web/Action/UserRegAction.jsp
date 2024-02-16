
<%@page import="dbconnection.Otp"%>
<%@page import="dbconnection.dbconnection"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>

<%
    dbconnection con = new dbconnection();
    System.out.println("in proregister page...");
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String email = request.getParameter("email");
    String phone = request.getParameter("contact");
    String age = request.getParameter("age");
    String gender = request.getParameter("gender");
    String psw = request.getParameter("psw");
    String aadhar = request.getParameter("aadhar");

    
     String MSG = "Your registration is successful. Your user name is '" + email + "' and password is '" + psw + "' LCCEKM";

    String insertqry = "SELECT COUNT(*) AS COUNT FROM `user` WHERE `email`='" + email + "' OR `contact`='" + phone + "' OR `aadhar`='" + aadhar + "'";
    System.out.println(insertqry);
    Iterator it = con.getData(insertqry).iterator();
    if (it.hasNext()) {
        Vector v = (Vector) it.next();
        int max_vid = Integer.parseInt(v.get(0).toString());
        System.out.println(max_vid);

        if (max_vid == 0) {

            String qry = "INSERT INTO `user`(`name`,`address`,`age`,`gender`,`email`,`contact`,`aadhar`) VALUES('" + name + "', '" + address + "','" + age + "', '" + gender + "', '" + email + "', '" + phone + "','"+aadhar+"')";
            String qry1 = "INSERT INTO `login`(`uid`,`uname`,`psw`,`type`,`age`,`gender`) VALUES((SELECT MAX(`uid`) FROM `user`), '" + email + "', '" + psw + "', 'user', '0','"+gender+"')";
            if (con.putData(qry) > 0 && con.putData(qry1) > 0) {
                System.out.println("Data inserted to User table");
               int a=Integer.parseInt(age);
               if (a<=18) {
                       String qry2 ="UPDATE `login` SET `age`='a' WHERE `uname`='"+email+"'";
                         if(con.putData(qry2)>0)
                         {
                             System.out.println("Successfull");
                         }
                   }
               else if(a>18 && a<45){
                   String qry3 ="UPDATE `login` SET `age`='b' WHERE `uname`='"+email+"'";
                         if(con.putData(qry3)>0)
                         {
                             System.out.println("Successfull");
                         }
               }
               else if(a>=45)
               {
                   String qry4 ="UPDATE `login` SET `age`='c' WHERE `uname`='"+email+"'";
                         if(con.putData(qry4)>0)
                         {
                             System.out.println("Successfull");
                         }
               }
                
%>

<script src="http://sms.mdsmedia.in/http-api.php?username=7000183&password=LCCCOK123&senderid=LCCEKM&route=23&number=
<%=phone%>&message=<%=MSG%>"> target = "blank" ></script>


<script>
            alert("New User Added sucesfully");
    window.location = "../UserRegister.jsp";

</script>

<% } else {

%>
<script>
    alert("Unsuccessful");

    window.location = "../UserRegister.jsp";
</script>
<% }
} else {
%>
<script>
    alert("Account Already Exist");

    window.location = "../UserRegister.jsp";
</script>
<% }
    }
%>

