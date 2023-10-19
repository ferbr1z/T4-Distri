package interfaces.beans;

import interfaces.IBean;

public interface IComment extends IBean {
    int getPostID();
    String getName();
    String getEmail();
    String getBody();
}
