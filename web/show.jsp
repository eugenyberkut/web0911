<%@ page import="logic.XY" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Yevhen
  Date: 09.11.2015
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Табуляция</title>
</head>
<body>
   <jsp:useBean id="calc" type="logic.Calculator" scope="request" />
   <table border="1">
       <thead>
       <th>X</th><th>Y</th>
       </thead>
       <tbody>
       <%
           List<XY> xyList = calc.getXyList();
           for (int i=0; i<xyList.size(); i++) {
               out.println("<tr><td>"+xyList.get(i).getX()+"</td>");
               out.println(String.format("<td>%5.3f</td></tr>",xyList.get(i).getY()));
           }
       %>
       </tbody>
   </table>
</body>
</html>
