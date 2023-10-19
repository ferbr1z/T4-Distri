package services;

import org.springframework.web.client.RestTemplate;
import abstracts.AbstractService;
import beans.User;

public class UserService extends AbstractService<User> {
    private RestTemplate rt = new RestTemplate();

    public UserService() {
        super("https://jsonplaceholder.typicode.com/users/");
    }

    private static final long serialVersionUID = 1L;

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
