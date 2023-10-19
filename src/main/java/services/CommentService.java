package services;

import org.springframework.web.client.RestTemplate;
import abstracts.AbstractService;
import beans.Comment;

public class CommentService extends AbstractService<Comment> {

    private RestTemplate rt = new RestTemplate();

    public CommentService() {
        super("https://jsonplaceholder.typicode.com/comments/");
    }

    private static final long serialVersionUID = 1L;

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
