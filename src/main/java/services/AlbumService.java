package services;

import abstracts.AbstractBean;
import abstracts.AbstractService;
import beans.Album;
import daos.AlbumDAO;
import dtos.AlbumDTO;

public class AlbumService extends AbstractService<AlbumDTO>{

	AlbumDAO tdao = new AlbumDAO();
	
	@Override
	protected AlbumDTO toDTO(AbstractBean bean) {
		return new AlbumDTO( (Album) bean);
	}

	@Override
	public AlbumDTO[] getAll() {
		Album[] albums = tdao.getAll();
		AlbumDTO[] albumsDTO = new AlbumDTO[albums.length];

		for (int i=0; i<albums.length; i++) {
			albumsDTO[i] = toDTO(albums[i]);
		}

		return albumsDTO;
	}

	@Override
	public AlbumDTO getByID(String id) {
		Album album = tdao.getByID(id);
		AlbumDTO albumDTO = new AlbumDTO(album);
		return null;
	}

}
