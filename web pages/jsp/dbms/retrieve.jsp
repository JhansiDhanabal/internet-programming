<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection c=DriverManager.getConnection("jdbc:derby://localhost:1527/employee");
            Statement st=c.createStatement();
            String choice=request.getParameter("t1");
            if(choice.equals("count")){
            ResultSet rs=st.executeQuery("select count(employee_id) as count from EMPLOYEE");
            out.println("<h1>number of employee</h1>");
            out.println("<table border='2' style='margin-left:100px;padding:2px;text-align:center;'><tr><th>count</th></tr>");
            while(rs.next()){
                int n=rs.getInt(1);
                out.println("<tr><td>"+n+"</td></tr>");
            }
            out.println("</table>");}
            else if(choice.equals("average")){
            ResultSet rs1=st.executeQuery("select avg(salary) as average from EMPLOYEE");
            out.println("<h1>Average of salary</h1>");
            out.println("<table border='2' style='margin-left:100px;padding:2px;text-align:center;'><tr><th>Average</th></tr>");
            while(rs1.next()){
                double n=rs1.getDouble(1);
                out.println("<tr><td>"+n+"</td></tr>");
            }
            out.println("</table>");}
            else if(choice.equals("maximum")){
            out.println("</table>");
            ResultSet rs2=st.executeQuery("select max(salary) as salary from EMPLOYEE");
            out.println("<h1>Maximum Salary</h1>");
            out.println("<table border='2' style='margin-left:100px;padding:2px;text-align:center;'><tr><th>Maximum</th></tr>");
            while(rs2.next()){
                int n=rs2.getInt(1);
                out.println("<tr><td>"+n+"</td></tr>");
            }
            out.println("</table>");}
        %>
    </body>
</html>
