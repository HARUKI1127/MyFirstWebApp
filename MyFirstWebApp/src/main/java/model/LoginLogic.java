package model;

public class LoginLogic {

    public boolean execute(User user) {

        // nullチェック（安全対策）
        if (user == null) {
            return false;
        }

        String userId = user.getUserId();
        String pass = user.getPass();

        // ★ null安全な比較（文字列リテラル側からequals）
        if ("minato".equals(userId) && "1234".equals(pass)) {
            return true;
        }

        return false;
    }
}
