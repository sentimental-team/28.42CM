package board.persistence.daoImpl;

import java.sql.Connection;
import java.sql.SQLException;

import board.dto.ProductBoardRegisterDTO;
import board.persistence.dao.ProductBoardRegisterDAO;

public class ProductBoardRegisterDAOImpl implements ProductBoardRegisterDAO{

	@Override
	public int productRegister(Connection conn, ProductBoardRegisterDTO dto) throws SQLException {
		
		return 0;
	}
	
}
