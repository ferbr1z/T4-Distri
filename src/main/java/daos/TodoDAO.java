package daos;

import org.springframework.web.client.RestTemplate;

import abstracts.AbstractDAO;
import beans.Todo;
import beans.User;
import dtos.TodoDTO;

public class TodoDAO extends AbstractDAO<Todo> {

	private RestTemplate rt = new RestTemplate();

	public TodoDAO() {
		//solamente se establece el endpoint de la api en el constructor padre
		// esto debe ser configurable
		super("https://jsonplaceholder.typicode.com/todos/");
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public Todo[] getAll() {
		Todo[] result = rt.getForObject(uri, Todo[].class);
		return result;
	}

	@Override
	public Todo getByID(String id) {
		UserDAO us = new UserDAO();
		String uriWithId = uri + "/" + id;
		Todo result = rt.getForObject(uriWithId, Todo.class);
		User user = us.getByID(Integer.toString(result.getUserID()));
		
		return result;
	}

}
