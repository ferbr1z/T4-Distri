package interfaces.dtos;

import interfaces.IDto;

public interface ITodoDTO extends IDto {

	
	public String getUserName();
	
	public int getUserID();

	public String getTitle();

	public boolean isCompleted();
	
}
