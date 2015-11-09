<%@ page import="logic.XY" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Yevhen
  Date: 09.11.2015
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
            <c:forEach  var="xy" items="${calc.xyList}">
                <tr>
                    <td>${xy.strX}</td><td>${xy.strY}</td>
                </tr>
            </c:forEach>
       </tbody>
   </table>
</body>
</html>
