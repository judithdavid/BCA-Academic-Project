<%@page import="dbconnection.dbconnection"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%

    FileItem f_item = null;
    String file_name = "";
    dbconnection con = new dbconnection();
    String pname = "", age = "", gender = "", description = "";
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
    System.out.println("111");
    if (isMultipart) {
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        //declaring a list of form fields
        List items_list = null;
        //assigning fields to list 'items_list'
        try {
            items_list = upload.parseRequest(request);
        } catch (FileUploadException ex) {
            out.println(ex);
        }
        //declaring iterator
        Iterator itr = items_list.iterator();
        //iterating through the list 'items_list'
        if (itr.hasNext()) {
            //typecasting next element in items_list as fileitem
            f_item = (FileItem) itr.next();
            //checking if 'f_item' contains a formfield(common controls like textbox,dropdown,radio buttonetc)
            while (f_item.isFormField()) {
                //getting fieldname and value
                String field = f_item.getFieldName();
                String value = f_item.getString();
                if (field.equalsIgnoreCase("pname")) {
                    pname = value;
                }
                if (field.equalsIgnoreCase("age")) {
                    age = value;
                }
                if (field.equalsIgnoreCase("gender")) {
                    gender = value;
                }
                if (field.equalsIgnoreCase("description")) {
                    description = value;
                }
                
                f_item = (FileItem) itr.next();
            }
            //else part does the image upload
            file_name = f_item.getName();
            //setting path to store image
            File proj_path = new File(config.getServletContext().getRealPath("/"));
            String file_path = proj_path.getParentFile().getParentFile().getPath() + "\\web\\PrImg\\";
            //creating a file object
            File savedFile = new File(file_path + file_name);
            try {
                //writing the file object
                f_item.write(savedFile);
            } catch (Exception ex) {
                out.println(ex);
            }
        }
    }

    String userid = (String) session.getAttribute("USERID");
    String insert = "INSERT INTO `images`(`name`,`age`,`gender`,`description`,`file`)VALUES('" + pname + "','" + age + "','" + gender + "','" + description + "','" + file_name + "')";
    System.out.println(insert);
    if (con.putData(insert) > 0) {
%>
<script>
    alert("New Image Added Successfully");
    window.location = "AdminAddImages.jsp";
</script>
<%
} else {
%>
<script>
    alert("Failed To Add Image");
    window.location = "AdminAddImages.jsp";
</script>
<%
    }
%>
