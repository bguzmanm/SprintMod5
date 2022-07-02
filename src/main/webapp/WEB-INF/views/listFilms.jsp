<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: brian
  Date: 01-07-22
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Listado de Peliculas</title>
</head>
<body>
<div>
    <header>
        <h1>MENU</h1>
        <a href="${pageContext.request.contextPath}/">Inicio</a>| <a href="${pageContext.request.contextPath}/films">Films</a>
    </header>

    <main>
        <table>
            <thead>
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

</body>
</html>
