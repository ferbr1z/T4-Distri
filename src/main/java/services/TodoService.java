package services;

import org.springframework.web.client.RestTemplate;

import abstracts.AbstractService;
import beans.Todo;

public class TodoService extends AbstractService<Todo> {

	private RestTemplate rt = new RestTemplate();

	public TodoService() {
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
		Todo result = rt.getForObject(uri, Todo.class);
		return result;
	}

}
