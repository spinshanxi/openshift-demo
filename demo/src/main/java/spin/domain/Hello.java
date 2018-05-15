package spin.domain;

import java.io.Serializable;
import java.util.Date;

public class Hello implements Serializable {
    private Date time;
    private String message;

    public Hello() {
    }

    public Hello(String message) {
        this.message = message;
        this.time = new Date();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}