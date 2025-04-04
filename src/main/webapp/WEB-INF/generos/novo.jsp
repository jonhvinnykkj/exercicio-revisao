<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastrar Novo Gênero</title>
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

        .form-container {
            width: 90%;
            max-width: 500px;
            margin: 40px auto;
            background-color: #ffffff;
            padding: 30px 25px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }

        .form-container label {
            display: block;
            margin-bottom: 8px;
            font-size: 16px;
            font-weight: 600;
            color: #2e7d32;
        }

        .form-container input[type="text"] {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 6px;
            margin-bottom: 20px;
            transition: border-color 0.3s ease;
        }

        .form-container input[type="text"]:focus {
            border-color: #4CAF50;
            outline: none;
        }

        .form-container button {
            width: 100%;
            padding: 12px;
            background-color: #43a047;
            color: white;
            font-size: 18px;
            font-weight: bold;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .form-container button:hover {
            background-color: #2e7d32;
            transform: scale(1.02);
        }

        .form-container a {
            display: block;
            margin-top: 20px;
            text-align: center;
            text-decoration: none;
            color: #2e7d32;
            font-weight: bold;
            transition: color 0.2s ease;
        }

        .form-container a:hover {
            color: #1b5e20;
            text-decoration: underline;
        }

        @media (max-width: 600px) {
            h1 {
                font-size: 1.5em;
                padding: 20px;
            }

            .form-container {
                padding: 20px;
            }

            .form-container button {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>

<h1>Cadastrar Novo Gênero</h1>

<div class="form-container">
    <form action="/generos" method="post">
        <label for="nome">Nome do Gênero</label>
        <input type="text" name="nome" id="nome" required />
        <button type="submit">Salvar</button>
    </form>
    <a href="/generos">Voltar para lista</a>
</div>

</body>
</html>
