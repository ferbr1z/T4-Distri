package interfaces.dtos;

import interfaces.IDto;

public interface IPhotoDTO extends IDto {
	  int getAlbumID();
	  String getTitle();
	  String getUrl();
	  String getThumbnailUrl();
}
