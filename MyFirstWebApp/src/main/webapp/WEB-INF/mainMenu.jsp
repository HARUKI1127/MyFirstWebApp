<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>メインメニュー</title>
    <style>
        body {
            margin: 0;
            font-family: "Segoe UI", sans-serif;
            min-height: 100vh;
            background: linear-gradient(135deg, #4facfe, #00f2fe);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background: #ffffff;
            padding: 40px;
            border-radius: 16px;
            width: 420px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.2);
            text-align: center;
        }

        h1 {
            margin-top: 0;
            color: #333;
        }

        .welcome {
            font-size: 18px;
            margin-bottom: 25px;
            color: #555;
        }

        ul.menu {
            list-style: none;
            padding: 0;
            margin: 0 0 30px 0;
        }

        ul.menu li {
            margin: 12px 0;
        }

        ul.menu a {
            display: block;
            padding: 12px;
            background: #4facfe;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            transition: 0.3s ease;
            font-weight: bold;
        }

        ul.menu a:hover {
            background: #3589e6;
            transform: translateY(-2px);
        }

        .logout {
            display: inline-block;
            margin-top: 10px;
            padding: 10px 18px;
            background: #ff5f5f;
            color: white;
            border-radius: 20px;
            text-decoration: none;
            transition: 0.3s ease;
        }

        .logout:hover {
            background: #e04444;
        }

        .footer {
            margin-top: 20px;
            font-size: 12px;
            color: #888;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>メインメニュー</h1>

    <p class="welcome">ようこそ、<strong>${loginUser.userId}</strong> さん！</p>

    <ul class="menu">
        <li><a href="#">📁 メニュー1（ユーザー情報）</a></li>
        <li><a href="#">⚙ メニュー2（設定）</a></li>
        <li><a href="#">📊 メニュー3（履歴）</a></li>
    </ul>

    <a class="logout" href="${pageContext.request.contextPath}/Logout">ログアウト</a>

    <div class="footer">
        MyFirstWebApp © 2025
    </div>
</div>

</body>
</html>
