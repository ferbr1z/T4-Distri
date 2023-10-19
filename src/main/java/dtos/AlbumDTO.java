package dtos;

import abstracts.AbstractDto;
import daos.UserDAO;
import interfaces.beans.IAlbum;
import interfaces.dtos.IAlbumDTO;

public class AlbumDTO extends AbstractDto implements IAlbumDTO {

	private static final long serialVersionUID = 1L;
	private int userId;
	private String title;
	private String userName;

	public AlbumDTO(IAlbum album) {
		UserDAO userDao = new UserDAO();
		this.id = album.getID();
		this.userId = album.getUserID();
		this.title = album.getTitle();
		this.userName = userDao.getByID(Integer.toString(album.getUserID())).getName();
	}

	@Override
	public int getUserID() {
		// TODO Auto-generated method stub
		return userId;
	}

	@Override
	public String getTitle() {
		// TODO Auto-generated method stub
		return title;
	}

	@Override
	public String getUserName() {
		// TODO Auto-generated method stub
		return userName;
	}
}
