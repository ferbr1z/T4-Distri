package abstracts;

import com.fasterxml.jackson.annotation.JsonProperty;

import interfaces.IBean;

public abstract class AbstractBean implements IBean {

	private static final long serialVersionUID = 1L;
    @JsonProperty("id")
	private int id;
	
	@Override
	public int getID() {
		return id;
	}

}
