<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Gêneros</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
            padding: 20px;
            background-color: #4CAF50;
            color: white;
        }
        table {
            width: 80%;
            margin: 30px auto;
            border-collapse: collapse;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 12px 15px;
            text-align: center;
            border: 1px solid #ddd;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        a {
            text-decoration: none;
            color: #4CAF50;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
        .action-links a {
            margin: 0 5px;
        }
        .add-button {
            display: block;
            width: 200px;
            margin: 30px auto;
            padding: 10px 15px;
            background-color: #4CAF50;
            color: white;
            font-size: 18px;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
        }
        .add-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<h1>Lista de Gêneros</h1>

<a href="/generos/novo" class="add-button">Novo Gênero</a>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Nome</th>
        <th>Ações</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${generos}" var="genero">
        <tr>
            <td>${genero.id}</td>
            <td>${genero.nome}</td>
            <td class="action-links">
                <a href="/generos/editar/${genero.id}">Editar</a> |
                <a href="/generos/excluir/${genero.id}">Excluir</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
