package services;

import org.springframework.web.client.RestTemplate;
import abstracts.AbstractService;
import beans.Album;

public class AlbumService extends AbstractService<Album> {

    private RestTemplate rt = new RestTemplate();

    public AlbumService() {
        super("https://jsonplaceholder.typicode.com/albums/");
    }

    private static final long serialVersionUID = 1L;

    @Override
    public Album[] getAll() {
        Album[] result = rt.getForObject(uri, Album[].class);
        return result;
    }

    @Override
    public Album getByID(String id) {
        String uriWithId = uri + "/" + id;
        Album result = rt.getForObject(uriWithId, Album.class);
        return result;
    }
}
