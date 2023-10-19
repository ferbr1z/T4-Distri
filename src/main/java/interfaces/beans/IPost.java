package interfaces.beans;

import interfaces.IBean;

public interface IPost extends IBean {
    int getUserID();
    String getTitle();
    String getBody();
}
