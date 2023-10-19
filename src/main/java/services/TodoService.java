package services;

import abstracts.AbstractBean;
import abstracts.AbstractService;
import beans.Todo;
import daos.TodoDAO;
import dtos.TodoDTO;

public class TodoService extends AbstractService<TodoDTO> {

	TodoDAO tdao = new TodoDAO();

	@Override
	protected TodoDTO toDTO(AbstractBean todo) {
		return new TodoDTO((Todo) todo);
	}

	@Override
	public TodoDTO[] getAll() {
		Todo[] todos = tdao.getAll();
		TodoDTO[] todosDTO = new TodoDTO[todos.length];

		for (int i=0; i<todos.length; i++) {
			todosDTO[i] = toDTO(todos[i]);
		}

		return todosDTO;
	}

	@Override
	public TodoDTO getByID(String id) {
		Todo todo = tdao.getByID(id);
		TodoDTO todoDTO = new TodoDTO(todo);
		return todoDTO;
	}

}
