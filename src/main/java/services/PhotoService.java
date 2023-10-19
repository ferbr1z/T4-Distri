package services;

import org.springframework.web.client.RestTemplate;
import abstracts.AbstractService;
import beans.Photo;

public class PhotoService extends AbstractService<Photo> {

    private RestTemplate rt = new RestTemplate();

    public PhotoService() {
        super("https://jsonplaceholder.typicode.com/photos/");
    }

    private static final long serialVersionUID = 1L;

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
