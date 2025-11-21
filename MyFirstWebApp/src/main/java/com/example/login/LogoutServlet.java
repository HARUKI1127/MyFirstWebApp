package com.example.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Logout")
public class LogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. セッション取得
        HttpSession session = request.getSession();

        // 2. セッション破棄（ログアウト）
        session.invalidate();

        // 3. ログアウト完了画面へフォワード
        RequestDispatcher dispatcher =
                request.getRequestDispatcher("/WEB-INF/jsp/logout.jsp");
        dispatcher.forward(request, response);
    }
}
