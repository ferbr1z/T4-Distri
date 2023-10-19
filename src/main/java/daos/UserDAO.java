package daos;

import org.springframework.web.client.RestTemplate;
import abstracts.AbstractDAO;
import beans.User;

public class UserDAO extends AbstractDAO<User> {
    private RestTemplate rt = new RestTemplate();

    public UserDAO() {
        super("https://jsonplaceholder.typicode.com/users/");
    }

    @Override
    public User[] getAll() {
        User[] result = rt.getForObject(uri, User[].class);
        return result;
    }

    @Override
    public User getByID(String id) {
        String uriWithId = uri + id;
        User result = rt.getForObject(uriWithId, User.class);
        return result;
    }
}
