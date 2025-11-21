<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>メインメニュー</title>

<style>
body {
    margin: 0;
    font-family: "Segoe UI", sans-serif;
    background: linear-gradient(135deg, #2196F3, #21CBF3);
}

.container {
    max-width: 600px;
    margin: 50px auto;
    background: #fff;
    padding: 30px;
    border-radius: 20px;
    box-shadow: 0 15px 30px rgba(0,0,0,0.2);
}

h1 {
    text-align: center;
    color: #2196F3;
}

.user-box {
    background: #f5faff;
    padding: 15px;
    border-radius: 10px;
    margin-bottom: 20px;
}

.menu-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 15px;
    margin-top: 20px;
}

.menu-card {
    padding: 15px;
    background: #2196F3;
    color: white;
    border-radius: 12px;
    text-align: center;
    text-decoration: none;
    transition: 0.3s;
}

.menu-card:hover {
    transform: scale(1.05);
    background: #1976D2;
}

.logout {
    display: block;
    margin-top: 30px;
    text-align: center;
    padding: 12px;
    background: #f44336;
    color: white;
    border-radius: 10px;
    text-decoration: none;
}

.time {
    text-align: right;
    font-size: 0.9em;
    color: #666;
}

.dark {
    background: #121212;
    color: white;
}
</style>

<script>
function showTime() {
    const now = new Date();
    document.getElementById("time").textContent =
        now.toLocaleString();
}
setInterval(showTime, 1000);

function toggleDark() {
    document.body.classList.toggle("dark");
}
</script>
</head>

<body onload="showTime()">

<div class="container">
    <h1>メインメニュー</h1>

    <div class="time">
        現在時刻：<span id="time"></span>
    </div>

    <div class="user-box">
        <p>ようこそ、<strong>${loginUser.userId}</strong> さん！</p>
    </div>

    <button onclick="toggleDark()">🌙 ダークモード切替</button>

    <div class="menu-grid">
        <a href="#" class="menu-card">📄 ユーザー情報</a>
        <a href="#" class="menu-card">🔒 パスワード変更</a>
        <a href="#" class="menu-card">⚙ 設定</a>
        <a href="#" class="menu-card">📊 利用履歴</a>
    </div>

    <a class="logout" href="${pageContext.request.contextPath}/Logout">
        ログアウト
    </a>
</div>

</body>
</html>