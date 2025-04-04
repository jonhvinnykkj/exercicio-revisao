<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Gêneros</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #e0f7e9, #f4f4f4);
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            padding: 30px 20px;
            background-color: #2e7d32;
            color: white;
            font-size: 2em;
            letter-spacing: 1px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 90%;
            max-width: 1000px;
            margin: 40px auto;
            border-collapse: collapse;
            background-color: #ffffff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 16px 20px;
            text-align: center;
            border-bottom: 1px solid #eeeeee;
            transition: background-color 0.3s ease;
        }

        th {
            background-color: #388e3c;
            color: white;
            text-transform: uppercase;
            font-size: 14px;
            letter-spacing: 0.5px;
        }

        tr:hover {
            background-color: #f1f8e9;
        }

        a {
            text-decoration: none;
            color: #2e7d32;
            font-weight: 600;
            transition: color 0.2s ease;
        }

        a:hover {
            color: #1b5e20;
            text-decoration: underline;
        }

        .action-links a {
            margin: 0 8px;
            font-size: 14px;
        }

        .add-button {
            display: block;
            width: fit-content;
            margin: 30px auto;
            padding: 12px 24px;
            background-color: #43a047;
            color: white;
            font-size: 16px;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            border-radius: 6px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .add-button:hover {
            background-color: #2e7d32;
            transform: scale(1.03);
        }

        @media (max-width: 768px) {
            table {
                width: 95%;
            }

            th, td {
                padding: 12px;
                font-size: 14px;
            }

            .add-button {
                width: 90%;
                font-size: 16px;
            }
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
                <a href="${pageContext.request.contextPath}/generos/deletar/${genero.id}">Excluir</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
