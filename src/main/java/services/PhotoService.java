package services;

import abstracts.AbstractBean;
import abstracts.AbstractService;
import beans.Photo;
import beans.Photo;
import beans.Photo;
import daos.PhotoDAO;
import dtos.PhotoDTO;
import dtos.PhotoDTO;
import dtos.PhotoDTO;

public class PhotoService extends AbstractService<PhotoDTO> {
	PhotoDAO pdao=new PhotoDAO();
	
	@Override
	protected PhotoDTO toDTO(AbstractBean photo) {
		return new PhotoDTO((Photo) photo);
	}
	
	@Override
	public PhotoDTO[] getAll() {
		Photo[] photos = pdao.getAll();
		PhotoDTO[] PhotosDTO=new PhotoDTO[photos.length];
		for (int i=0;i<photos.length;i++) {
			PhotosDTO[i]=toDTO(photos[i]);
		}
		return PhotosDTO;
	}
	
	@Override
	public PhotoDTO getByID(String id) {
		Photo photo=pdao.getByID(id);
		PhotoDTO photoDTO=new PhotoDTO(photo);
		return photoDTO;
	}
	
}
