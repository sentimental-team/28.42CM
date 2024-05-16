package board.persistence.dao;

import java.sql.SQLException;

import board.dto.ProductRegisterDTO;

public interface ProductRegisterDAO {
	// 상품 등록
	int  productRegister(ProductRegisterDTO dto) throws SQLException;
}
