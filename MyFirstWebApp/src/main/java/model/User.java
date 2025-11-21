package model;

import java.io.Serializable;

public class User implements Serializable {

    private String userId;
    private String pass;

    public User() {}

    public User(String userId, String pass) {
        this.userId = userId;
        this.pass = pass;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
}

