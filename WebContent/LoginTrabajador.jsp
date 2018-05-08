<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Vista del trabajador</title>
</head>
<body>

<h2>Vista del trabajador</h2>

<p>Nombre: ${proyecto.title}</p>
<p>Email: ${gestor.name}</p>
<p>Estado: ${proyecto.status}</p>

<c:if test="${proyecto.status == 3}">
<%@ include file="Form1Proyecto.jsp" %>
</c:if>

<c:if test="${proyecto.status}.status >= 4}">
<a href="ServeFileServlet">Pito</a>
</c:if>

</body>
</html>