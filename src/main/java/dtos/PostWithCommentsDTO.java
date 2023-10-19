package dtos;

import java.lang.reflect.Array;
import java.util.ArrayList;

import beans.Comment;
import daos.CommentDAO;
import interfaces.beans.IPost;
import interfaces.dtos.ICommentDTO;
import interfaces.dtos.IPostWithCommentsDTO;

public class PostWithCommentsDTO extends PostDTO implements IPostWithCommentsDTO {

	private static final long serialVersionUID = 1L;

	public ArrayList<CommentDTO> commentsDTO = new ArrayList<>();
	CommentDAO cdao = new CommentDAO();

	public PostWithCommentsDTO(IPost post) {
		super(post);
		Comment[] commentsList = cdao.getAll();

		for (Comment comment : commentsList) {
			commentsDTO.add(new CommentDTO(comment));
		}

	}

	@Override
	public ICommentDTO[] getComments() {
		ICommentDTO[] array = new ICommentDTO[commentsDTO.size()];
        array = commentsDTO.toArray(array);
		return array;
	}

}
