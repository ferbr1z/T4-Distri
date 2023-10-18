package abstracts;


import interfaces.IService;

public abstract class AbstractService<T extends AbstractBean> implements IService<T> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	protected String uri;

	public AbstractService(String uri) {
		this.uri = uri;
	}

	@Override
	public abstract T[] getAll();

	@Override
	public abstract T getByID(String id);

}
