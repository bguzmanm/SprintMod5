<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: brian
  Date: 01-07-22
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<head>
    <title>Listado de Peliculas</title>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<div>
    <header>
        <h1>MENU</h1>
        <%@include file="nav.jsp"%>
    </header>

    <main>
        <table class="table">
            <thead class="table-dark">
            <tr>
                <th>Id</th>
                <th>Titulo</th>
                <th>Descripción</th>
                <th>Año Lanzamiento</th>
                <th>Duración Renta</th>
                <th>Duración</th>
                <th>Censura</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="f" items="${films}">
                <tr>
                    <th><c:out value="${f.getFilm_id()}"/></th>
                    <td><c:out value="${f.getTitle()}"/></td>
                    <td><c:out value="${f.getDescription()}"/></td>
                    <td><c:out value="${f.getRelease_year()}"/></td>
                    <td><c:out value="${f.getRental_duration()}"/></td>
                    <td><c:out value="${f.getLength()}"/></td>
                    <td><c:out value="${f.getRating()}"/></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </main>
</div>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>
