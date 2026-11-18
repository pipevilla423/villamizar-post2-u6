
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Nueva tarea</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/estilos.css">
</head>
<body>

    <h1>Nueva tarea</h1>

    <!-- Resumen de errores -->
    <c:if test="${not empty errores}">
        <div class="alert-error">
            <ul>
                <c:forEach var="e" items="${errores}">
                    <li><c:out value="${e.value}"/></li>
                </c:forEach>
            </ul>
        </div>
    </c:if>

    <form method="post"
          action="${pageContext.request.contextPath}/app">

        <input type="hidden"
               name="comando"
               value="guardar">

        <!-- Titulo -->
        <label>
            Título:

            <input type="text"
                   name="titulo"
                   value="<c:out value='${titulo}'/>"
                   class="${not empty errores.titulo ? 'input-error' : ''}">

            <c:if test="${not empty errores.titulo}">
                <span class="campo-error">
                    <c:out value="${errores.titulo}"/>
                </span>
            </c:if>
        </label>

        <!-- Categoria -->
        <label>
            Categoría:

            <input type="text"
                   name="categoria"
                   value="<c:out value='${categoria}'/>"
                   class="${not empty errores.categoria ? 'input-error' : ''}">

            <c:if test="${not empty errores.categoria}">
                <span class="campo-error">
                    <c:out value="${errores.categoria}"/>
                </span>
            </c:if>
        </label>

        <!-- Prioridad -->
        <label>
            Prioridad:

            <select name="prioridad"
                    class="${not empty errores.prioridad ? 'input-error' : ''}">

                <option value="Alta"
                    ${prioridad == 'Alta' ? 'selected' : ''}>
                    Alta
                </option>

                <option value="Media"
                    ${empty prioridad || prioridad == 'Media' ? 'selected' : ''}>
                    Media
                </option>

                <option value="Baja"
                    ${prioridad == 'Baja' ? 'selected' : ''}>
                    Baja
                </option>
            </select>

            <c:if test="${not empty errores.prioridad}">
                <span class="campo-error">
                    <c:out value="${errores.prioridad}"/>
                </span>
            </c:if>
        </label>

        <!-- Fecha limite -->
        <label>
            Fecha límite (yyyy-MM-dd):

            <input type="text"
                   name="fechaLimite"
                   placeholder="2026-12-20"
                   value="<c:out value='${fechaLimite}'/>"
                   class="${not empty errores.fechaLimite ? 'input-error' : ''}">

            <c:if test="${not empty errores.fechaLimite}">
                <span class="campo-error">
                    <c:out value="${errores.fechaLimite}"/>
                </span>
            </c:if>
        </label>

        <button type="submit">
            Guardar
        </button>

        <a href="${pageContext.request.contextPath}/app">
            Cancelar
        </a>

    </form>

</body>
</html>
