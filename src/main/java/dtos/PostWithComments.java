package dtos;

import java.util.ArrayList;

import interfaces.beans.IPost;

public class PostWithComments extends PostDTO {

	private static final long serialVersionUID = 1L;
	
	ArrayList<CommentDTO> comments = new ArrayList<>(); 
	
	public PostWithComments(IPost post) {
		super(post);
	}
	
	
	
}
