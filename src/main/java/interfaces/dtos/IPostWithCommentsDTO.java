package interfaces.dtos;

public interface IPostWithCommentsDTO extends IPostDTO {
	
	public ICommentDTO[] getComments();

}
