package interfaces;

import beans.User;

public interface IUser extends IBean{
	String getName();

	String getUsername();

	String getEmail();

	String getPhone();

	String getWebsite();

	User.Address getAddress();

	User.Company getCompany();
}
