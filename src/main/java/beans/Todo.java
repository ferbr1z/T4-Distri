package beans;

import com.fasterxml.jackson.annotation.JsonProperty;

import abstracts.AbstractBean;
import interfaces.beans.ITodo;

public class Todo extends AbstractBean implements ITodo {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@JsonProperty("userId")
	private int userId;
	private String title;
	private boolean isCompleted;
	
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
	public boolean isCompleted() {
		// TODO Auto-generated method stub
		return isCompleted;
	}
	
	@Override
	public String toString()
	{
		return String.format("id: %d, userId:%s titulo: %s, completo: %b", getID(), getUserID(), getTitle(), isCompleted());
	}
	

}
