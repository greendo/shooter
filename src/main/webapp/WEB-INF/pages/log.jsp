<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale-1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>log</title>
</head>

<body>
    <h2>
        <a href="${pageContext.request.contextPath}">main</a>
    </h2>

    <br>${message}
    <c:choose>
        <c:when test="${not empty name}">
            Logged as: ${name}<br>
            <form action="${pageContext.request.contextPath}/logout" method="post">
                <button type="submit" value="submit" class="btn-link">logout</button>
            </form>
        </c:when>

        <c:otherwise>
            <form action="${pageContext.request.contextPath}/login" method="post">
                Name: <input type="text" name="name">${name}<br>
                <button type="submit" value="submit" class="btn-link">login</button>
            </form>
        </c:otherwise>
    </c:choose>
</body>
</html>