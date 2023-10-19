package services;

import abstracts.AbstractBean;
import abstracts.AbstractService;
import beans.Comment;
import daos.CommentDAO;
import dtos.CommentDTO;

public class CommentService extends AbstractService<CommentDTO>{
	CommentDAO cdao= new CommentDAO();
	@Override
	protected CommentDTO toDTO(AbstractBean comment) {
		return new CommentDTO((Comment) comment);
	}
	
	@Override
	public CommentDTO[] getAll() {
		Comment[] comments = cdao.getAll();
		CommentDTO[] commentsDTO=new CommentDTO[comments.length];
		for (int i=0;i<comments.length;i++) {
			commentsDTO[i]=toDTO(comments[i]);
		}
		return commentsDTO;
	}
	
	
	@Override
	public CommentDTO getByID(String id) {
		Comment comment=cdao.getByID(id);
		CommentDTO commentDTO=new CommentDTO(comment);
		return commentDTO;
	}

}



