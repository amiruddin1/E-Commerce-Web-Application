<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs_project","root","");
                Statement st = con.createStatement();
                String id = request.getParameter("pid");
                
                int res = st.executeUpdate("Delete From `products` where ProductId = '"+id+"'");
                if(res>0)
                {
                    response.sendRedirect("listProducts.jsp");
                }
                else{
                    response.sendRedirect("deleteProduct.jsp");
                }
        %>
    </body>
</html>