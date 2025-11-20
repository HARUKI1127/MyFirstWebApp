<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>ログイン</title>
</head>
<body>
    <h1>ログイン</h1>

    <form action="/MyFirstWebApp/Login" method="post">
        ユーザーID：<input type="text" name="userId"><br>
        パスワード：<input type="password" name="pass"><br>
        <input type="submit" value="ログイン">
    </form>

</body>
</html>
