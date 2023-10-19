package daos;

import org.springframework.web.client.RestTemplate;
import abstracts.AbstractDAO;
import beans.Post;

public class PostDAO extends AbstractDAO<Post> {

    private RestTemplate rt = new RestTemplate();

    public PostDAO() {
        super("https://jsonplaceholder.typicode.com/posts/");
    }

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
    
    public Post[] getByUserId(String id) {
    	String uriByUserId = "https://jsonplaceholder.typicode.com/users/" + id +"/posts";
        Post[] result = rt.getForObject(uriByUserId, Post[].class);
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
