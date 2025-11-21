package model;

public class LoginLogic {

    public boolean execute(User user) {
        // 本来はここでデータベースと照合する
        // 今回は簡易的に、IDとパスワードが一致するかどうかだけをチェック
        if (user.getPass().equals("1234")) {
            return true; // ログイン成功
        }
        return false; // ログイン失敗
    }
}

