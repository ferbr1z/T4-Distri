package beans;

import abstracts.AbstractBean;
import interfaces.beans.IPost;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Post extends AbstractBean implements IPost {

    private static final long serialVersionUID = 1L;

    @JsonProperty("userId")
    private int userId;
    @JsonProperty("id")
    private int id;
    @JsonProperty("title")
    private String title;
    @JsonProperty("body")
    private String body;

    @Override
    public int getUserID() {
        return userId;
    }

    @Override
    public int getID() {
        return id;
    }

    @Override
    public String getTitle() {
        return title;
    }

    @Override
    public String getBody() {
        return body;
    }
}
