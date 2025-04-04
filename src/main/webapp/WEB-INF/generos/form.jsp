<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>${genero.id != null ? 'Editar Gênero' : 'Novo Gênero'}</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #e0f7e9, #f4f4f4);
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 550px;
            margin: 40px auto;
            background-color: #ffffff;
            padding: 30px 25px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #2e7d32;
            font-size: 24px;
            margin-bottom: 25px;
        }

        label {
            font-size: 16px;
            margin-bottom: 8px;
            display: block;
            color: #2e7d32;
            font-weight: 600;
        }

        input[type="text"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus {
            border-color: #43a047;
            outline: none;
        }

        button {
            width: 100%;
            padding: 14px;
            background-color: #43a047;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 18px;
            font-weight: bold;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        button:hover {
            background-color: #2e7d32;
            transform: scale(1.02);
        }

        .back-link {
            text-align: center;
            margin-top: 20px;
        }

        .back-link a {
            color: #2e7d32;
            font-weight: bold;
            font-size: 16px;
            text-decoration: none;
            transition: color 0.2s ease;
        }

        .back-link a:hover {
            color: #1b5e20;
            text-decoration: underline;
        }

        @media (max-width: 600px) {
            .container {
                padding: 20px;
                margin: 20px;
            }

            h2 {
                font-size: 20px;
            }

            button {
                font-size: 16px;
            }
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
