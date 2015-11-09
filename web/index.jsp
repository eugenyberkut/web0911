<%--
  Created by IntelliJ IDEA.
  User: Yevhen
  Date: 09.11.2015
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Табуляция</title>
  </head>
  <body>
  <form action="tabulation" method="post">
    <table>
      <tr>
        <td>Start: </td><td><input type="text" name="start" /></td>
      </tr>
      <tr>
        <td>Finish: </td><td><input type="text" name="finish" /></td>
      </tr>
      <tr>
        <td>Step: </td><td><input type="text" name="step"></td>
      </tr>
    <tr><td colspan="2"><input type="submit" value="Ok"></td></tr>
    </table>
  </form>
  </body>
</html>
