// File: LoginServlet.java
package com.example.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.LoginLogic;
import model.User;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // リクエストパラメータの取得
        request.setCharacterEncoding("UTF-8");
        String userId = request.getParameter("userId");
        String pass = request.getParameter("pass");

        // Userインスタンスの生成
        User user = new User(userId, pass);

        // ログイン処理の実行
        LoginLogic loginLogic = new LoginLogic();
        boolean isLogin = loginLogic.execute(user);

        // ログイン成功時の処理
        if (isLogin) {
            HttpSession session = request.getSession();
            session.setAttribute("loginUser", user);

            RequestDispatcher dispatcher =
                    request.getRequestDispatcher("/WEB-INF/mainMenu.jsp");
            dispatcher.forward(request, response);

        } else {
            request.setAttribute("errorMsg", "IDまたはパスワードが間違っています。");

            RequestDispatcher dispatcher =
                    request.getRequestDispatcher("/loginForm.jsp");
            dispatcher.forward(request, response);
        }
    }
}
