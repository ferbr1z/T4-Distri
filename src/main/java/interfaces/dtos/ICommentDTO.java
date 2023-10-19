package interfaces.dtos;

import interfaces.IBean;
import interfaces.IDto;

public interface ICommentDTO extends IDto {
    int getPostID();
    String getName();
    String getEmail();
    String getBody();
}
