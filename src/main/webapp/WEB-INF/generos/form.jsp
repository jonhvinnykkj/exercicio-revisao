<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>${genero.id != null ? 'Editar Gênero' : 'Novo Gênero'}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 600px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            font-size: 16px;
            margin-bottom: 8px;
            display: block;
            color: #555;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        button {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #45a049;
        }
        .back-link {
            display: block;
            text-align: center;
            margin-top: 15px;
            font-size: 16px;
        }
        .back-link a {
            color: #007bff;
            text-decoration: none;
        }
        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>${genero.id != null ? 'Editar Gênero' : 'Novo Gênero'}</h2>
        <form action="<%= request.getContextPath() %>/generos" method="post">
            <input type="hidden" name="id" value="${genero.id}" />
            <label for="nome">Nome:</label>
            <input type="text" id="nome" name="nome" value="${genero.nome}" required />

            <button type="submit">${genero.id != null ? 'Atualizar' : 'Salvar'}</button>
        </form>
        <div class="back-link">
            <a href="<%= request.getContextPath() %>/generos">Voltar para a lista de Gêneros</a>
        </div>
    </div>
</body>
</html>
