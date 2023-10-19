package beans;

import abstracts.AbstractBean;
import interfaces.beans.IComment;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Comment extends AbstractBean implements IComment {

    private static final long serialVersionUID = 1L;

    @JsonProperty("postId")
    private int postId;
    @JsonProperty("id")
    private int id;
    @JsonProperty("name")
    private String name;
    @JsonProperty("email")
    private String email;
    @JsonProperty("body")
    private String body;

    @Override
    public int getPostID() {
        return postId;
    }

    @Override
    public int getID() {
        return id;
    }

    @Override
    public String getName() {
        return name;
    }

    @Override
    public String getEmail() {
        return email;
    }

    @Override
    public String getBody() {
        return body;
    }
}
