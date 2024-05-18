package mypage.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import mypage.domain.MypageDTO;

public class MypageDAO implements IMypage{
	private MypageDAO() {}
	
	private static MypageDAO instance = new MypageDAO();
	
	public static MypageDAO getInstance() {
		return instance;
	}
	

	@Override
	public List<MypageDTO> selectDeliveryList(Connection con, int delivery_state) throws SQLException {
		
		String sql = "SELECT delivery_date, pd_id, pd_image_url, brand_name, pd_name, pd_option_name, pd_price, deli_pay, delivery_state "
				   + "FROM product p JOIN pay pay ON p.pd_id = pay.pd_id "
				   + "JOIN delivery d ON pay.pay_id = d.pay_id "
				   + "JOIN product_image i ON p.pd_id = i.pd_id "
				   + "JOIN main_ctgr m ON p.main_ctgr_id = p.main_ctgr_id "
				   + "JOIN delivery_pay dp ON p.main_ctgr_id = dp.main_ctgr_id "
				   + "JOIN large_ctgr lc ON lc.large_ctgr_id = p.large_ctgr_id "
				   + "JOIN product_option po ON lc.large_ctgr_id = po.large_ctgr_id "
				   + "JOIN brand b ON p.brand_id = b.brand_id "
				   + "WHERE delivery_state = ? ";
		
		ArrayList<MypageDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, delivery_state);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				list = new ArrayList<MypageDTO>();
				MypageDTO dto = null;
				
				do {
					dto = new MypageDTO();
					dto.setDeliveryDate(rs.getDate("delivery_state"));
					dto.setPdId(rs.getInt("pd_id"));
					dto.setPdImageURL(rs.getString("pd_image_url"));
					dto.setBrandName(rs.getString("brand_name"));
					dto.setPdName(rs.getString("pd_name"));
					dto.setPdOptionName(rs.getString("pd_option_name"));
					dto.setPdPrice(rs.getInt("pr_price"));
					dto.setDeliveryState(rs.getInt("delivery_state"));
					dto.setDeliveryPay(rs.getInt("deli_pay"));
					dto.setMemberId(rs.getInt("member_id"));
					
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
