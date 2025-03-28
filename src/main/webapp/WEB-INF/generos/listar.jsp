<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Gêneros</title>
</head>
<body>
    <h2>Gêneros</h2>
    <a href="<%= request.getContextPath() %>/generos/novo">Novo Gênero</a>
    <table>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Ações</th>
        </tr>
        <c:forEach var="genero" items="${generos}">
            <tr>
                <td>${genero.id}</td>
                <td>${genero.nome}</td>
                <td>
                    <a href="<%= request.getContextPath() %>/generos/editar/${genero.id}">Editar</a> |
                    <a href="<%= request.getContextPath() %>/generos/deletar/${genero.id}">Deletar</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
