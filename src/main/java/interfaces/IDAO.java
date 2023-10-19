package interfaces;

import java.io.Serializable;
import java.util.List;

public interface IDAO<T>  {

	public T[] getAll();
	public T getByID(String id);
	
}
