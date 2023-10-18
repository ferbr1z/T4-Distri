package interfaces;

import java.io.Serializable;
import java.util.List;

public interface IService<T>  extends Serializable  {

	public T[] getAll();
	public T getByID(String id);
	
}
