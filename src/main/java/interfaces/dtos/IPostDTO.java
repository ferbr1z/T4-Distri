package interfaces.dtos;

import interfaces.IDto;

public interface IPostDTO extends IDto {
	
	public int getUserID();
	
	public String getUserName();
	
	public String getTitle();
	
	public String getBody();
	
}
