package interfaces.beans;

import interfaces.IBean;

public interface IPhoto extends IBean {
    int getAlbumID();
    String getTitle();
    String getUrl();
    String getThumbnailUrl();
}
