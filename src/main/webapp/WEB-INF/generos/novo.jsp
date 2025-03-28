<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastrar Novo Gênero</title>
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
        .form-container {
            width: 40%;
            margin: 40px auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-container label {
            display: block;
            margin: 10px 0 5px;
            font-size: 16px;
        }
        .form-container input[type="text"] {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .form-container button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            font-size: 18px;
            border: none;
            border-radius: 5px;
        }
        .form-container button:hover {
            background-color: #45a049;
        }
        .form-container a {
            display: inline-block;
            margin-top: 10px;
            text-align: center;
            text-decoration: none;
            color: #4CAF50;
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
