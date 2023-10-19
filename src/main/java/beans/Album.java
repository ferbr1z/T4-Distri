package beans;

import abstracts.AbstractBean;
import interfaces.IAlbum;
import com.fasterxml.jackson.annotation.JsonProperty;

public class Album extends AbstractBean implements IAlbum {

    private static final long serialVersionUID = 1L;

    @JsonProperty("userId")
    private int userId;
    @JsonProperty("id")
    private int id;
    @JsonProperty("title")
    private String title;

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
}
