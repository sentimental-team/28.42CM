package board.persistence.daoImpl;


import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import board.dto.ProductBoardDTO;


public interface IProductBoard {
	
	List<ProductBoardDTO> selectMediumList(Connection con, int medium_ctr_id) throws SQLException;

}
