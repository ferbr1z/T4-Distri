package abstracts;

import beans.Todo;
import dtos.TodoDTO;
import interfaces.IService;

public abstract class AbstractService<T extends AbstractDto> implements IService<T> {

	private static final long serialVersionUID = 1L;
	
	protected abstract T toDTO(AbstractBean bean);
	
	@Override
	public abstract T[] getAll();

	@Override
	public abstract T getByID(String id);

}
