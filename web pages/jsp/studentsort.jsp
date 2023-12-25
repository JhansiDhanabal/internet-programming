<%@page import="java.util.*"%>
<%@page import="jstl.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            class student implements Comparable<student>
            {
                String name;
                int grade;
                String email;
                student(String n,int g,String e)
                {
                    name=n;
                    grade=g;
                    email=e;
                }
               public String toString()
               {
                return  name + "            " + this.grade+ "          " + email ;
               }
               public int compareTo(student o)
               {
                    return toString().compareTo(o.toString());
               }
             
            }
                  student s[]={
                      new student("raja",17,"raja@gmail.com"),
                      new student("kala",18,"kala@gmail.com"),
                      new student("raju",18,"raju@gmail.com")
                  };
                    out.println("<br>");
                     pageContext.setAttribute("obj",s);
                     %>
                     <h1>Before sorting</h1>
                     <table border="2">
                      <th>name            grade           email</th>
                     
                      <c:forEach var="i"  items="${pageScope.obj}" begin="0" end="2">
                          <tr><td>${i}</td></tr>
                      </c:forEach>
                 </table>
                     <%
                     
                      Arrays.sort(s, new Comparator<student>() {
                         public int compare(student o1, student o2) {
                              return o1.name.compareTo(o2.name);
                         }
                      });
                      pageContext.setAttribute("obj1",s);
                  %>
                   <h1>After sorting</h1>
                  <table border="2">
                      <th>name            grade           email</th>      
                      <c:forEach var="i"  items="${pageScope.obj1}" begin="0" end="2">
                          <tr><td>${i}</td></tr>
                      </c:forEach>
                 </table>
           
    </body>
</html>
