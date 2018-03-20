<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale-1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>rooms</title>
</head>

<body>
    <h2>
        <a href="${pageContext.request.contextPath}">main</a>
    </h2>


    <ul>
        <c:forEach items="${rooms}" var="item">
            <li>
                <a href="${pageContext.request.contextPath}/room/${item}">room ${item}</a>
            </li>
        </c:forEach>
    </ul>
</body>
</html>
