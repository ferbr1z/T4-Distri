package services;

import abstracts.AbstractBean;
import abstracts.AbstractService;
import beans.User;
import daos.UserDAO;
import dtos.UserDTO;

public class UserService extends AbstractService<UserDTO> {

	UserDAO udao = new UserDAO();
	
	@Override
	protected UserDTO toDTO(AbstractBean bean) {
		return new UserDTO((User) bean);
	}

	@Override
	public UserDTO[] getAll() {
		User[] users = udao.getAll();
		UserDTO[] usersDTO = new UserDTO[users.length];
		
		for (int i=0; i<users.length; i++) {
			usersDTO[i] = toDTO(users[i]);
		}
		
		return usersDTO;
	}

	@Override
	public UserDTO getByID(String id) {
		User user = udao.getByID(id);
		UserDTO userDTO = toDTO(user);
		return null;
	}

}
