<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>ログアウト完了</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            background: linear-gradient(135deg, #667eea, #764ba2);
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: "Segoe UI", sans-serif;
        }

        .logout-container {
            background: white;
            padding: 40px;
            border-radius: 20px;
            text-align: center;
            box-shadow: 0 20px 40px rgba(0,0,0,0.2);
            animation: fadeIn 1s ease;
            max-width: 400px;
            width: 90%;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h1 {
            color: #764ba2;
            margin-bottom: 10px;
        }

        p {
            color: #555;
            margin-bottom: 30px;
        }

        .btn {
            display: inline-block;
            background: #667eea;
            color: white;
            padding: 12px 25px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: bold;
            transition: 0.3s ease;
        }

        .btn:hover {
            background: #764ba2;
            transform: scale(1.05);
        }

        .icon {
            font-size: 60px;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>

<div class="logout-container">
    <div class="icon">👋</div>
    <h1>ログアウトしました</h1>
    <p>ご利用ありがとうございました。<br>またお会いしましょう！</p>

    <a class="btn" href="loginForm.jsp">ログイン画面へ戻る</a>
</div>

</body>
</html>
