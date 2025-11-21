package com.example.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.LoginLogic;

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

        if (isLogin) {
            request.setAttribute("msg", "ログイン成功！");
            RequestDispatcher dispatcher =
                    request.getRequestDispatcher("/WEB-INF/loginResult.jsp");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("errorMsg", "IDまたはパスワードが間違っています。");
            RequestDispatcher dispatcher =
                    request.getRequestDispatcher("/login.jsp");
            dispatcher.forward(request, response);
        }
    }
}
