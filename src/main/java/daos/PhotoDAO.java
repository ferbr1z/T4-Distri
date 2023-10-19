package daos;

import org.springframework.web.client.RestTemplate;
import abstracts.AbstractDAO;
import beans.Photo;

public class PhotoDAO extends AbstractDAO<Photo> {

    private RestTemplate rt = new RestTemplate();

    public PhotoDAO() {
        super("https://jsonplaceholder.typicode.com/photos/");
    }

    @Override
    public Photo[] getAll() {
        Photo[] result = rt.getForObject(uri, Photo[].class);
        return result;
    }

    @Override
    public Photo getByID(String id) {
        String uriWithId = uri + "/" + id;
        Photo result = rt.getForObject(uriWithId, Photo.class);
        return result;
    }
}
