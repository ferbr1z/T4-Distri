package dtos;

import abstracts.AbstractBean;
import abstracts.AbstractDto;
import interfaces.beans.IComment;
import interfaces.dtos.ICommentDTO;

import com.fasterxml.jackson.annotation.JsonProperty;

public class CommentDTO extends AbstractDto implements ICommentDTO {

    private static final long serialVersionUID = 1L;
    
    

    private int postId;
    private int id;
    private String name;
    private String email;
    private String body;
    
    public CommentDTO(IComment comment) {
        this.postId = comment.getPostID();
        this.id = comment.getID();
        this.name = comment.getName();
        this.email = comment.getEmail();
        this.body = comment.getBody();
    }

    @Override
    public int getPostID() {
        return postId;
    }

    @Override
    public int getID() {
        return id;
    }

    @Override
    public String getName() {
        return name;
    }

    @Override
    public String getEmail() {
        return email;
    }

    @Override
    public String getBody() {
        return body;
    }
}
