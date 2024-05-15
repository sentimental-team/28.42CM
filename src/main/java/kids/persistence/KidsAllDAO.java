package kids.persistence;

import java.util.List;
import kids.domain.KidsAllDTO;

public interface KidsAllDAO {
    List<KidsAllDTO> getAllProductsByMediumCtgrId(int mediumCtgrId);
}
