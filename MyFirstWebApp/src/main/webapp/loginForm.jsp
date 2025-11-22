<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>ログイン</title>
<style>
body {
    margin: 0;
    font-family: "Segoe UI", sans-serif;
    background: linear-gradient(135deg, #4e73df, #1cc88a);
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
}

.login-container {
    background: #fff;
    padding: 40px;
    border-radius: 16px;
    width: 350px;
    box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
    animation: fadeIn 0.8s ease;
}

@keyframes fadeIn {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}

h1 {
    text-align: center;
    margin-bottom: 15px;
    color: #333;
}

.error-message {
    background: #ffe6e6;
    color: #d60000;
    padding: 10px;
    border-radius: 8px;
    margin-bottom: 15px;
    text-align: center;
    font-size: 14px;
    border: 1px solid #ffb3b3;
}

.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
    color: #555;
}

input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 10px;
    border-radius: 8px;
    border: 1px solid #ccc;
    font-size: 14px;
}

.btn-login {
    width: 100%;
    padding: 12px;
    background: linear-gradient(135deg, #4e73df, #224abe);
    color: #fff;
    border: none;
    border-radius: 25px;
    font-size: 16px;
    cursor: pointer;
}

.footer-text {
    text-align: center;
    margin-top: 15px;
    font-size: 13px;
    color: #888;
}
</style>
</head>
<body>

<div class="login-container">
    <h1>ログイン</h1>

    <!-- 🔴 エラーメッセージ表示 -->
    <%
        String errorMsg = (String) request.getAttribute("errorMsg");
        if (errorMsg != null) {
    %>
        <div class="error-message">
            <%= errorMsg %>
        </div>
    <%
        }
    %>

    <form action="/MyFirstWebApp/Login" method="post">
        <div class="form-group">
            <label for="userId">ユーザーID</label>
            <input type="text" id="userId" name="userId" placeholder="ユーザーIDを入力" required>
        </div>

        <div class="form-group">
            <label for="pass">パスワード</label>
            <input type="password" id="pass" name="pass" placeholder="パスワードを入力" required>
        </div>

        <input type="submit" class="btn-login" value="ログイン">
    </form>

    <div class="footer-text">
        © MyFirstWebApp Login System
    </div>
</div>

</body>
</html>