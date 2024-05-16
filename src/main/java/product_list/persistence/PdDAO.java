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
		
		
<<<<<<< HEAD
		String sql = "select b.brand_name, p.pd_name, p.pd_price, g.pd_grade, i.pd_image_url, "
				+ "p.medium_ctgr_id, p.pd_info, p.pd_sales_quantity, p.pd_discount_rate "
				+ ",b.brand_id, i.pd_image_url, i.pd_info_image_url "
				+ "FROM product p "
				+ "JOIN pd_like l ON p.pd_Id=l.pd_id "
				+ "JOIN product_grade g ON l.pd_id=g.pd_id "
				+ "JOIN brand b ON p.brand_Id=b.brand_Id "
				+ "JOIN product_image i ON p.pd_id=i.pd_id "
				+ "WHERE p.medium_ctgr_id = ? ";
		
=======
		String sql =" SELECT p.PD_ID, pd_name, pd_price, pd_info, pd_sales_quantity, pd_discount_rate"
				+ " ,p.brand_id, brand_name, Pd_Image_Url, pd_info_image_url ,p.Medium_Ctgr_Id, pd_grade, c.medium_ctgr_name "
				+ " FROM product p"
				+ " JOIN brand b on p.brand_id =b.brand_id"
				+ " join PRODUCT_IMAGE i on p.pd_id = i.pd_id"
				+ " join PRODUCT_GRADE g  on p.pd_id=g.pd_id"
				+ " join MEDIUM_CTGR c on p.medium_ctgr_id = c.medium_ctgr_id"
				+ " WHERE p.medium_ctgr_id= ?";
				
>>>>>>> 73d0ea59512a2423ae7d0459565d08f287e04fa2
				
				
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

<<<<<<< HEAD
	               dto.setPdId(rs.getInt("pd_id"));
=======
	               dto.setPdId(rs.getInt("PD_ID"));
>>>>>>> 73d0ea59512a2423ae7d0459565d08f287e04fa2
	               dto.setPdName(rs.getString("pd_name"));
	               dto.setPdPrice( rs.getInt("pd_price"));
	               dto.setPdInfo( rs.getString("pd_info"));   
	               dto.setPdSalesQuantity(rs.getInt("pd_sales_quantity"));
	               dto.setPdDiscountRate(rs.getInt("pd_discount_rate"));
	               dto.setBrandId(rs.getInt("brand_id"));               
	               dto.setBrandName(rs.getString("brand_name"));       
<<<<<<< HEAD
	               dto.setPdImageUrl(rs.getString("pd_image_url"));    
	               dto.setPdInfoImageUrl(rs.getString("pd_info_image_url")); 
	               dto.setMedium_ctgr_id(rs.getInt("medium_ctgr_id"));
=======
	               dto.setPdImageUrl(rs.getString("Pd_Image_Url"));    
	               dto.setPdInfoImageUrl(rs.getString("pd_info_image_url")); 
	               dto.setMedium_ctgr_id(rs.getInt("Medium_Ctgr_Id"));
	               dto.setPdGrade(rs.getInt("pd_grade"));
	               dto.setMedium_ctgr_name(rs.getString("medium_ctgr_name"));
>>>>>>> 73d0ea59512a2423ae7d0459565d08f287e04fa2
	               
	               
	                
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