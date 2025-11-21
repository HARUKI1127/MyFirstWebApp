<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>メインメニュー</title>
</head>
<body>

<h1>メインメニュー</h1>

<p>ようこそ、${loginUser.userId} さん！</p>

<ul>
    <li><a href="#">メニュー1</a></li>
    <li><a href="#">メニュー2</a></li>
    <li><a href="#">メニュー3</a></li>
</ul>

<hr>

<!-- ログアウトリンク -->
<a href="${pageContext.request.contextPath}/Logout">ログアウト</a>

</body>
</html>
