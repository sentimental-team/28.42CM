package cart.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import cart.domain.CartDTO;

public class CartDAO implements ICart {

	// 싱글톤
	private CartDAO() {
	}

	private static CartDAO instance = new CartDAO();

	public static CartDAO getInstance() {
		return instance;
	}

	@Override
	public List<CartDTO> cartIn(Connection con, int pd_id) throws SQLException {

		String sql = " SELECT  pd_name, pd_price, brand_name, pd_option_name, delivery_pay, pd_image_url, COUNT(*) OVER() cnt "
				+ " FROM product p " + " JOIN brand b ON b.brand_id = p.brand_id "
				+ " JOIN main_ctgr m ON p.main_ctgr_id = m.main_ctgr_id "
				+ " JOIN delivery_pay de ON m.main_ctgr_id = de.main_ctgr_id "
				+ " JOIN large_ctgr l ON p.large_ctgr_id = l.large_ctgr_id "
				+ " JOIN product_option o ON l.large_ctgr_id = o.large_ctgr_id "
				+ " JOIN product_image img ON p.pd_id = img.pd_id " + " JOIN pay a ON  a.pd_id = p.pd_id "
				+ " WHERE p.pd_id = ? ";

		ArrayList<CartDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		

			
			
	

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, pd_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				list = new ArrayList<CartDTO>();
				CartDTO dto = null;
				
				do {
					dto = new CartDTO();
					dto.setPdName(rs.getString("pd_name"));
					dto.setPdPrice(rs.getInt("pd_price"));
					dto.setBrandName(rs.getString("brand_name"));
					dto.setPdOptionName(rs.getString("pd_option_name"));
					dto.setDeliveryPay(rs.getInt("delivery_pay"));
					dto.setPdImageURL(rs.getString("pd_image_url"));
					dto.setCnt(rs.getInt("cnt"));

					list.add(dto);
				} while (rs.next());

			}
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		
		return list;
	}

}