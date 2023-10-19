package beans;

import abstracts.AbstractBean;
import interfaces.beans.IPhoto;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Photo extends AbstractBean implements IPhoto {

    private static final long serialVersionUID = 1L;

    @JsonProperty("albumId")
    private int albumId;
    @JsonProperty("id")
    private int id;
    @JsonProperty("title")
    private String title;
    @JsonProperty("url")
    private String url;
    @JsonProperty("thumbnailUrl")
    private String thumbnailUrl;

    @Override
    public int getAlbumID() {
        return albumId;
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
    public String getUrl() {
        return url;
    }

    @Override
    public String getThumbnailUrl() {
        return thumbnailUrl;
    }
}
