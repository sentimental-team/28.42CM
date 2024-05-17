package cart.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import cart.domain.CartDTO;
import product_list.domain.PdDTO;

public interface ICart {

	//1. 장바구니에 담기
	public List<CartDTO> cartIn(Connection con, int pd_id) throws SQLException;
	
	
}
