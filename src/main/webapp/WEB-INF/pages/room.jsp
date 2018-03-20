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
    <script src="<c:url value="/js/engine/init.js" />"></script>

    <script src="<c:url value="/js/EaselJS-0.8.2/lib/easeljs-0.8.2.min.js" />"></script>
    <script src="<c:url value="/js/PreloadJS-0.6.2/lib/preloadjs-0.6.2.min.js" />"></script>

    <script src="<c:url value="/js/sockjs-client-master/dist/sockjs.min.js" />"></script>
    <script src="<c:url value="/js/stomp-websocket-master/lib/stomp.min.js" />"></script>
</head>

<body>
    <h2>
        <a href="${pageContext.request.contextPath}">main</a>
    </h2>

    <canvas id="canvas" width="1920" height="1080" oncontextmenu="return false;"></canvas>
    <br/><button id='connect'>connect</button><button id='disconnect'>disconnect</button>
    <script>
        let world = '${pageContext.request.contextPath}/img/bioms/${biom}/';
        let chars = '${pageContext.request.contextPath}/img/characters/';
        let guns = '${pageContext.request.contextPath}/img/guns/';

        let init = window.init = new Initialiser(world, chars, guns, "${player_name}", ${room_id});
        ${init_script}
        document.getElementById('connect').addEventListener('click', function() {init.connect()});
        document.getElementById('disconnect').addEventListener('click', function() {init.disconnect()});
    </script>
</body>
</html>