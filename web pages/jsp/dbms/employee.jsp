<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EMPLOYEE</title>
        
    </head>
    <body>
        <%
            Connection c=DriverManager.getConnection("jdbc:derby://localhost:1527/employee");
            Statement st=c.createStatement();
            ResultSet rs3=st.executeQuery("select * from employee");
            out.println("<h3 style='margin-left:150px;'>EMPLOYEE</h3>");
            out.println("<table border='2' style='padding:2px;text-align:center;'><tr><th>EMPLOYEE ID</th><th>FIRST NAME</th><th>LAST NAME</th><th>SALARY</th></tr>");
            while(rs3.next()){
                int n=rs3.getInt(1);
                String f=rs3.getString(2);
                String l=rs3.getString(3);
                double sal=rs3.getDouble(4);
                out.println("<tr><td>"+n+"</td><td>"+f+"</td><td>"+l+"</td><td>"+sal+"</td></tr>");
            }
            out.println("</table>");
        %>
    <form action="retrieve.jsp" method="post">
        <h3>enter your choice</h3>
        <input type="radio" name="t1" value="count">count<br>
        <input type="radio" name="t1" value="average">average<br>
        <input type="radio" name="t1" value="maximum">maximum<br><br>
        <input type="submit">
    </form>
        
    </body>
</html>
