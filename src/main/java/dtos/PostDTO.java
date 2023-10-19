package dtos;

import abstracts.AbstractDto;
import daos.UserDAO;
import interfaces.beans.IPost;
import interfaces.dtos.IPostDTO;
public class PostDTO extends AbstractDto implements IPostDTO {

	private int userId;
	private String title;
	private String body;
	private String userName;
	
	public PostDTO(IPost post) {
		UserDAO userDao = new UserDAO();
		this.id = post.getID();
		this.userId = post.getUserID();
		this.body = post.getBody();
		this.userName = userDao.getByID(Integer.toString(userId)).getName();
	}
	
	@Override
	public int getUserID() {
		return userId;
	}

	@Override
	public String getUserName() {
		// TODO Auto-generated method stub
		return userName;
	}

	@Override
	public String getTitle() {
		// TODO Auto-generated method stub
		return title;
	}

	@Override
	public String getBody() {
		// TODO Auto-generated method stub
		return body;
	}

}
