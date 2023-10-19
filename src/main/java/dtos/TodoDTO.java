package dtos;

import abstracts.AbstractDto;

import daos.UserDAO;
import interfaces.beans.ITodo;
import interfaces.dtos.ITodoDTO;


public class TodoDTO extends AbstractDto implements ITodoDTO {

	private static final long serialVersionUID = 1L;
	private int userId;
	private String userName;
	private String title;
	private boolean isCompleted;
	
	public TodoDTO(ITodo todo) {
		UserDAO userDao = new UserDAO();
		this.id=todo.getID();
		this.userId=todo.getUserID();
		this.title=todo.getTitle();
		this.isCompleted=todo.isCompleted();
		this.userName = userDao.getByID(Integer.toString(todo.getUserID())).getName();
	}

	public String getUserName() {
		return userName;
	}
	
	public int getUserID() {
		return userId;
	}

	public String getTitle() {
		return title;
	}

	public boolean isCompleted() {
		return isCompleted;
	}
	
	public String toString()
	{
		return String.format("id: %d, userId:%s titulo: %s, completo: %b", getID(), getUserID(), getTitle(), isCompleted());
	}
	

}
