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
    transition: background 0.5s, color 0.5s;
}

/* コンテナ */
.container {
    max-width: 700px;
    margin: 60px auto;
    backdrop-filter: blur(12px);
    background: rgba(255,255,255,0.95);
    padding: 35px;
    border-radius: 25px;
    box-shadow: 0 25px 60px rgba(0,0,0,0.25);
}

/* 見出し */
h1 {
    text-align: center;
    color: #1976D2;
    font-weight: 600;
}

/* ユーザー情報 */
.user-box {
    background: #f0faff;
    padding: 20px;
    border-radius: 15px;
    margin-bottom: 20px;
    font-size: 1.1em;
}

/* 時刻 */
.time {
    text-align: right;
    font-size: 0.9em;
    color: #666;
    margin-bottom: 10px;
}

/* ボタン共通 */
button {
    padding: 10px 15px;
    border-radius: 25px;
    border: none;
    background: linear-gradient(135deg, #2196F3, #00BCD4);
    color: white;
    cursor: pointer;
    transition: 0.3s;
}
button:hover {
    transform: scale(1.05);
}

/* メニュー */
.menu-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 20px;
    margin-top: 25px;
}

.menu-card {
    padding: 20px;
    background: linear-gradient(135deg, #2196F3, #1976D2);
    color: white;
    border-radius: 18px;
    text-align: center;
    font-size: 1.1em;
    text-decoration: none;
    transition: 0.3s ease;
}

.menu-card:hover {
    transform: translateY(-5px) scale(1.03);
    box-shadow: 0 10px 25px rgba(0,0,0,0.3);
}

/* ログアウト */
.logout {
    display: block;
    margin-top: 40px;
    text-align: center;
    padding: 14px;
    background: #f44336;
    color: white;
    border-radius: 15px;
    text-decoration: none;
    font-weight: bold;
}

/* ========= ダークモード ========= */

.dark {
    background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
    color: white;
}

.dark .container {
    background: rgba(20,20,20,0.95);
}

.dark h1 {
    color: #4FC3F7;
}

.dark .user-box {
    background: linear-gradient(135deg, #1f1f1f, #2c2c2c);
    border: 1px solid #333;
}

.dark .user-box p {
    color: white;
}

.dark .user-box strong {
    color: #4FC3F7;
}

.dark .time {
    color: #aaa;
}

.dark .menu-card {
    background: linear-gradient(135deg, #333, #111);
}

/* トグルスイッチ */
.toggle {
    display: flex;
    justify-content: flex-end;
    margin-bottom: 10px;
}
</style>

<script>
function showTime() {
    const now = new Date();
    document.getElementById("time").textContent = now.toLocaleString();
}
setInterval(showTime, 1000);

function toggleDark() {
    document.body.classList.toggle("dark");
}
</script>
</head>

<body onload="showTime()">

<div class="container">

    <div class="toggle">
        <button onclick="toggleDark()">🌙 ダークモード</button>
    </div>

    <h1>メインメニュー</h1>

    <div class="time">
        現在時刻：<span id="time"></span>
    </div>

    <div class="user-box">
        <p>ようこそ、<strong>${loginUser.userId}</strong> さん！</p>
    </div>

    <div class="menu-grid">
        <a href="#" class="menu-card">📄 ユーザー情報</a>
        <a href="#" class="menu-card">🔒 パスワード変更</a>
        <a href="#" class="menu-card">📊 利用履歴</a>
        <a href="#" class="menu-card">⚙ 設定</a>
    </div>

    <a class="logout" href="${pageContext.request.contextPath}/Logout">
        🚪 ログアウト
    </a>

</div>

</body>
</html>