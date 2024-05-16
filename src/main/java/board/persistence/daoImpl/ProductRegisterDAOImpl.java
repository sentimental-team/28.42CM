package board.persistence.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.JdbcUtil;

import board.dto.ProductRegisterDTO;
import board.persistence.dao.ProductRegisterDAO;

public class ProductRegisterDAOImpl implements ProductRegisterDAO{
	
	private Connection conn = null;
	// 1. 생성자를 통한 DI
		public ProductRegisterDAOImpl(Connection conn) {
			this.conn = conn;
		}

		// 2. Setter를 통한 DI
		public void setConn(Connection conn) {
			this.conn = conn;
		}

		// 2-2 Getter
		public Connection getConn() {
			return this.conn;
		}

	
	@Override
	public int productRegister(ProductRegisterDTO dto) throws SQLException {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		// int brandId = -1;
		int insertCount = 0;
		
		// String checkBrand = "SELECT brand_id FROM brand WHERE brand_name = ? ";
		String insertBrandSql = "INSERT INTO brand (brand_id, brand_name) VALUES (seq_brand_id.NEXTVAL, ?) ";
		
		String insertProductSql = "INSERT INTO product (pd_id, pd_name, pd_price, pd_info, pd_discount_rate, brand_id, main_ctgr, large_ctgr, medium_ctgr, small_ctgr) " +
                "VALUES (seq_pd_id.NEXTVAL, ?, ?, ?, ?, seq_brand_id.CURRVAL, ?, ?, ?, ?)";
		
		try {
			// pstmt = conn.prepareStatement(checkBrand);
			
			// pstmt.setString(1, dto.getBrandName());
			// rs = pstmt.executeQuery();
						
			 
			pstmt = conn.prepareStatement(insertBrandSql);
            pstmt.setString(1, dto.getBrandName());
            insertCount = pstmt.executeUpdate();


            pstmt = conn.prepareStatement(insertProductSql);
            pstmt.setString(1, dto.getPdName());
            pstmt.setInt(2, dto.getPdPrice());
            pstmt.setString(3, dto.getPdInfo());
            pstmt.setInt(4, dto.getPdDiscountRate()); 
            pstmt.setInt(5, dto.getMainCtgrId());
            pstmt.setInt(6, dto.getLargeCtgrId());
            pstmt.setInt(7, dto.getMediumCtgrId());
            pstmt.setInt(8, dto.getSmallCtgrId());
            
            insertCount = pstmt.executeUpdate();
            
			
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		return insertCount;

	}

}
