<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: night
  Date: 5/22/21
  Time: 11:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculatrice</title>
</head>
<body>
<a href="./"><h2>Calculatrice</h2></a>



<form:form action="calculate" method="POST" modelAttribute="expression">
    <p style="color: red;">${errors}</p>
    <p style="color: dodgerblue;"> ${expression.exp} = ${expression.res} </p>
    <table>
        <tr>
            <th>Expression : </th>
            <td><form:input path="exp"/></td>
        </tr>
    </table>

    <button id="btn" type="submit">Calculer</button>
</form:form>

<h3>past expressions:</h3>
<table>
    <tr>
        <th>Expression</th>
        <th>Result</th>
    </tr>
    <c:forEach items="${expressions}" var="expressionItem">
        <tr>
            <td>${expressionItem.exp}</td>
            <td>${expressionItem.res}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
