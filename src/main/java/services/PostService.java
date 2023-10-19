package services;

import org.springframework.web.client.RestTemplate;
import abstracts.AbstractService;
import beans.Post;

public class PostService extends AbstractService<Post> {

    private RestTemplate rt = new RestTemplate();

    public PostService() {
        super("https://jsonplaceholder.typicode.com/posts/");
    }

    private static final long serialVersionUID = 1L;

    @Override
    public Post[] getAll() {
        Post[] result = rt.getForObject(uri, Post[].class);
        return result;
    }

    @Override
    public Post getByID(String id) {
        String uriWithId = uri + "/" + id;
        Post result = rt.getForObject(uriWithId, Post.class);
        return result;
    }

    public Post create(Post post) {
        return rt.postForObject(uri, post, Post.class);
    }

    public void update(String id, Post post) {
        String uriWithId = uri + "/" + id;
        rt.put(uriWithId, post);
    }

    public void delete(String id) {
        String uriWithId = uri + "/" + id;
        rt.delete(uriWithId);
    }
}
