package interfaces.beans;

import beans.User;
import interfaces.IBean;

public interface IUser extends IBean{
	String getName();

	String getUsername();

	String getEmail();

	String getPhone();

	String getWebsite();

	User.Address getAddress();

	User.Company getCompany();
}
