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

    <script src="<c:url value="/js/engine/player.js" />"></script>
    <script src="<c:url value="/js/engine/controller.js" />"></script>
    <script src="<c:url value="/js/engine/room.js" />"></script>
    <script src="<c:url value="/js/engine/gun.js" />"></script>

    <script src="<c:url value="/js/engine/test.js" />"></script>

    <script src="<c:url value="/js/PreloadJS-0.6.2/lib/preloadjs-0.6.2.min.js" />"></script>
    <script src="<c:url value="/js/EaselJS-0.8.2/lib/easeljs-0.8.2.min.js" />"></script>

    <style>
        .buttons {
            top: 20px;
            position: relative;
        }
        #left {
            height: 70px;
            width: 33%;
        }
        #right {
            height: 70px;
            width: 33%;
        }
        #jump {
            height: 70px;
            width: 34%;
        }
    </style>
</head>

<body>
    <h2>
        <a href="${pageContext.request.contextPath}">main</a>
    </h2>

    <canvas id="canvas" width="1920" height="1080" oncontextmenu="return false;" onmousemove="logMouse(event)"></canvas>
    <%--<div class="buttons">--%>
        <%--<button id="left"><----</button><button id="jump">[____]</button><button id="right">----></button>--%>
    <%--</div>--%>

    <script>

        let logMouse = (e) => {};

        let world = '${pageContext.request.contextPath}/img/bioms/desert/';
        let chars = '${pageContext.request.contextPath}/img/characters/';
        let guns = '${pageContext.request.contextPath}/img/guns/';

        console.log('world = ' + world);

        test(world, chars, guns);
    </script>
</body>
</html>