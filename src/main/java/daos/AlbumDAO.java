package daos;

import org.springframework.web.client.RestTemplate;
import abstracts.AbstractDAO;
import beans.Album;

public class AlbumDAO extends AbstractDAO<Album> {

    private RestTemplate rt = new RestTemplate();

    public AlbumDAO() {
        super("https://jsonplaceholder.typicode.com/albums/");
    }

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
