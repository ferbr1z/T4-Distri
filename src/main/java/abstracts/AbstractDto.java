package abstracts;

import interfaces.IDto;

public abstract class AbstractDto implements IDto {

	private static final long serialVersionUID = 1L;

	protected int id;
	
	@Override
	public int getID() {
		return id;
	}

}
