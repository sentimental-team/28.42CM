package product_list.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import product_list.domain.PdDTO;



public class PdDAO implements IPd {

	//싱글톤
	   private PdDAO() {}
	   private static PdDAO instance = new PdDAO();
	   public static PdDAO getInstance() {
	      return instance;
	   }
	@Override
	public List<PdDTO> selectMediumList(Connection con, int medium_ctgr_id) throws SQLException {
		
		
		String sql = "select b.brand_name, p.pd_name, p.pd_price, g.pd_grade, i.pd_image_url, "
				+ "p.medium_ctgr_id, p.pd_info, p.pd_sales_quantity, p.pd_discount_rate "
				+ ",b.brand_id, i.pd_image_url, i.pd_info_image_url "
				+ "FROM product p "
				+ "JOIN pd_like l ON p.pd_Id=l.pd_id "
				+ "JOIN product_grade g ON l.pd_id=g.pd_id "
				+ "JOIN brand b ON p.brand_Id=b.brand_Id "
				+ "JOIN product_image i ON p.pd_id=i.pd_id "
				+ "WHERE p.medium_ctgr_id = ? ";
		
				
				
		 ArrayList<PdDTO> list = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      
	      try {
	         pstmt = con.prepareStatement(sql);
	         pstmt.setInt(1,medium_ctgr_id);
	         rs = pstmt.executeQuery();
	         if ( rs.next() ) {
	            list = new ArrayList<PdDTO>();
	            PdDTO dto = null;
	            do {
	               dto =  new PdDTO();

	               dto.setPdId(rs.getInt("pd_id"));
	               dto.setPdName(rs.getString("pd_name"));
	               dto.setPdPrice( rs.getInt("pd_price"));
	               dto.setPdInfo( rs.getString("pd_info"));   
	               dto.setPdSalesQuantity(rs.getInt("pd_sales_quantity"));
	               dto.setPdDiscountRate(rs.getInt("pd_discount_rate"));
	               dto.setBrandId(rs.getInt("brand_id"));               
	               dto.setBrandName(rs.getString("brand_name"));       
	               dto.setPdImageUrl(rs.getString("pd_image_url"));    
	               dto.setPdInfoImageUrl(rs.getString("pd_info_image_url")); 
	               dto.setMedium_ctgr_id(rs.getInt("medium_ctgr_id"));
	               
	               
	                
	               list.add(dto);
	            } while ( rs.next() );
	         } // 
	      } finally {
	         JdbcUtil.close(pstmt);
	         JdbcUtil.close(rs);        
	         //JdbcUtil.close(con);
	      } // finally

	      return list;
	}
	   
	   
	   
	   
	   
	   
}