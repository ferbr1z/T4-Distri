package dtos;

import abstracts.AbstractDto;
import interfaces.IDto;
import interfaces.beans.IPhoto;
import interfaces.dtos.IPhotoDTO;

public class PhotoDTO extends AbstractDto implements IPhotoDTO{


    private static final long serialVersionUID = 1L;

    private int albumId;
    private int id;
    private String title;
    private String url;
    private String thumbnailUrl;
    public PhotoDTO(IPhoto photo ) {
    	this.id=photo.getID();
    	this.albumId=photo.getAlbumID();
    	this.title=photo.getTitle();
    	this.url=photo.getUrl();
    	this.thumbnailUrl=photo.getThumbnailUrl();
    	
    }

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

