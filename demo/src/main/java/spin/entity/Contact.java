package spin.entity;

public class Contact {
    private String name;
    private String email;
    private String comments;

    @Override
    public String toString() {
        return "(" + name + " " + email + " " + comments + ")";
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }
}