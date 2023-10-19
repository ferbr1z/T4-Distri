package interfaces.dtos;

import beans.User.Address;
import beans.User.Company;
import interfaces.IDto;

public interface IUserDTO extends IDto {
	public String getName();
	public String getUserName();
	public String getEmail();
	public String getPhone();
	public String getWebsite();
	public Address getAddress();
	public Company getCompany();
}