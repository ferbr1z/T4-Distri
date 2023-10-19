package interfaces.beans;

import interfaces.IBean;

public interface ITodo extends IBean {
	public int getUserID();
	public String getTitle();
	public boolean isCompleted();
}
