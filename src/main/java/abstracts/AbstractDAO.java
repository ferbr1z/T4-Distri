package abstracts;


import interfaces.IDAO;

public abstract class AbstractDAO<T extends AbstractBean> implements IDAO<T> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	protected String uri;

	public AbstractDAO(String uri) {
		this.uri = uri;
	}

	@Override
	public abstract T[] getAll();

	@Override
	public abstract T getByID(String id);

}
