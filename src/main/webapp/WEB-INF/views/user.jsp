<%--
  Created by IntelliJ IDEA.
  User: brian
  Date: 02-07-22
  Time: 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Usuarios</title>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <header>
        <%@include file="nav.jsp" %>
        <h1>Películas el rollo</h1>
    </header>
    <main>
        <form class="row g-3 needs-validation" action="${pageContext.request.contextPath}/users" method="post" novalidate>
            <div class="row">
                <div class="col">
                    <label for="username" class="form-label">Nombre de usuario</label>
                </div>
                <div class="col-8">
                    <input type="text" id="username" name="username" placeholder="nombre de usuario"
                           class="form-control" required>
                    <div class="invalid-feedback">
                        Ingresa un nombre de usuario.
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="password" class="form-label">Contraseña</label>
                </div>
                <div class="col-8">
                    <input type="password" id="password" name="password" class="form-control" required>
                    <div class="invalid-feedback">
                        Ingresa una contraseña
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="password2" class="form-label">Repite la contraseña</label>
                </div>
                <div class="col-8">
                    <input type="password" id="password2" name="password2" class="form-control" required>
                    <div class="invalid-feedback">
                        Debes volver a ingresar una contraseña
                    </div>
                    <div class="invalid-feedback" id="clavemala">
                        Debes ingresar la misma clave, pelmazo
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <button type="submit" class="btn btn-primary">Enviar</button>
                </div>
                <div class="col-8">
                    <button type="reset" class="btn btn-secondary">Limpiar</button>
                </div>
            </div>
        </form>
    </main>
    <script>
        (() => {
            'use strict'

            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            const forms = document.querySelectorAll('.needs-validation')

            // Loop over them and prevent submission
            Array.from(forms).forEach(form => {
                form.addEventListener('submit', event => {

                    if ($('#password').val() != $('#password2').val()){
                        event.preventDefault();
                        event.stopPropagation();
                        $('#clavemala').show();
                    }

                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }
                    form.classList.add('was-validated')
                }, false)
            })
        })()
    </script>
</div>
</body>
</html>
