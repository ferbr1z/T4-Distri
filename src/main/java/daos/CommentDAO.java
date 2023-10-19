package daos;

import org.springframework.web.client.RestTemplate;
import abstracts.AbstractDAO;
import beans.Comment;

public class CommentDAO extends AbstractDAO<Comment> {

    private RestTemplate rt = new RestTemplate();

    public CommentDAO() {
        super("https://jsonplaceholder.typicode.com/comments/");
    }

    @Override
    public Comment[] getAll() {
        Comment[] result = rt.getForObject(uri, Comment[].class);
        return result;
    }

    @Override
    public Comment getByID(String id) {
        String uriWithId = uri + "/" + id;
        Comment result = rt.getForObject(uriWithId, Comment.class);
        return result;
    }
}
