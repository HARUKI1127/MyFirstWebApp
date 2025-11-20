package com.example.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	// 1. リクエストパラメータの取得
    	request.setCharacterEncoding("UTF-8"); // 文字化け対策
    	String userId = request.getParameter("userId");
    	String pass  = request.getParameter("pass");

    	// 2. ログイン処理（今回は簡易的な判定）
    	String msg = "";
    	if ("minato".equals(userId) && "1234".equals(pass)) {
    	    msg = "ログイン成功！";
    	} else {
    	    msg = "ログイン失敗…";
    	}

    	// 3. リクエストスコープにメッセージを保存
    	request.setAttribute("msg", msg);

    	// 4. 結果画面にフォワード
    	String forwardPath = "/WEB-INF/loginResult.jsp";
    	RequestDispatcher dispatcher = request.getRequestDispatcher(forwardPath);
    	dispatcher.forward(request, response);

    }
}
