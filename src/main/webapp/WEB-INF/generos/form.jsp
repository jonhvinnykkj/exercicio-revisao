<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Formulário de Gênero</title>
</head>
<body>
    <h2>${genero.id != null ? 'Editar Gênero' : 'Novo Gênero'}</h2>
    <form action="<%= request.getContextPath() %>/generos" method="post">
        <input type="hidden" name="id" value="${genero.id}" />
        <label>Nome:</label>
        <input type="text" name="nome" value="${genero.nome}" /><br/>
        <button type="submit">Salvar</button>
    </form>
    <a href="<%= request.getContextPath() %>/generos">Voltar</a>
</body>
</html>
