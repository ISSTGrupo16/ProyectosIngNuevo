<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Vista de administracion</title>
</head>
<body>

<h2>Vista de Recursos Humanos</h2>

<h3>Formulario de creacion de gestor de proyectos</h3>
<%@ include file = "FormNuevoGestor.jsp" %>

<h3>Listado de proyectos</h3>

<table border=1>
<tr>
<th>Nombre proyecto</th>
<th>Nombre de gestor</th>

<th>Estado</th>
<th>Nº Trabajadores</th>
<th>Horas Trabajadas</th>
<th>Horas Totales</th>
<th>Info</th>
</tr>

<c:forEach items="${proyecto_list}" var="pi">
<tr>
<td>${pi.title}</td>
<td>${pi.name}</td>

<td>${pi.status}</td>
<td>${pi.numeroTrabajadores}</td>
<td>${pi.numeroHorasTrabajadas}</td>
<td>${pi.numeroHorasTotales}</td>

<td><c:if test="${pi.status == 2}">
<%@ include file="FormLogin.jsp" %>
</c:if></td>
<td>
<c:if test="${pi.status > 4}">
<a href="ServeFileServlet">Descargar memoria</a>
</c:if></td>
<td>
<c:if test="${pi.status == 5}">
<%@ include file="FormLogin.jsp" %>
</c:if>
</td>
<td>
<c:if test="${pi.status == 7}">
<%@ include file="FormLogin.jsp" %>
</c:if>
</td>

</tr>
</c:forEach>

</table>


<h3>Listado de trabajadores</h3>

<table border=1>
<tr>
<th>Nombre</th>
<th>Email</th>
<th>Especialidad</th>

</tr>

<c:forEach items="${trabajador_list}" var="ti">
<tr>
<td>${ti.name}</td>
<td>${ti.email}</td>
<td>${ti.especialidad}</td>

</tr>
</c:forEach>

</table>


</body>
</html>