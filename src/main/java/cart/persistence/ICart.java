package cart.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import cart.domain.CartDTO;
import product_list.domain.PdDTO;

public interface ICart {

	public List<CartDTO> cartIn(Connection con, int pd_id) throws SQLException;
}
