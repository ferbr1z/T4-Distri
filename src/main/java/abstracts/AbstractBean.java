package abstracts;

import interfaces.IBean;

public abstract class AbstractBean implements IBean {

	private static final long serialVersionUID = 1L;

	private int id;
	
	@Override
	public int getID() {
		return id;
	}

}
