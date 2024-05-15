package board.persistence.dao;

import java.sql.Connection;
import java.sql.SQLException;

import board.dto.ProductBoardRegisterDTO;

public interface ProductBoardRegisterDAO {
	
	// 상품 등록
	int  productRegister(ProductBoardRegisterDTO dto) throws SQLException;
	
}
