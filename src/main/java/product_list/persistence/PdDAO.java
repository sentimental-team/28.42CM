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
		
		
		String sql = " select brand_name, pd_name, pd_price, pd_grade,pd_image_url,medium_ctgr_id, pdInfo, pdSalesQuantity, pdDiscountRate"
					+" ,brandId, pdImageUrl, pdInfoImageUrl"
					+" from product p"
					+" join pd_like l on p.pd_Id=l.pd_id"
					+" join product_grade g on l.pd_id=g.pd_id"
					+" join brand b on p.brand_Id=b.brand_Id"
					+" join product_image i on p.pd_id=i.pd_id"
					+" where p.medium_ctgr_id = ? ";
		
				
				
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

	               dto.setPdId(rs.getInt("pdId"));
	               dto.setPdName(rs.getString("pdName"));
	               dto.setPdPrice( rs.getInt("PdPrice"));
	               dto.setPdInfo( rs.getString("pdInfo"));   
	               dto.setPdSalesQuantity(rs.getInt("pdSalesQuantity"));
	               dto.setPdDiscountRate(rs.getInt("pdDiscountRate"));
	               dto.setBrandId(rs.getInt("brandId"));               
	               dto.setBrandName(rs.getString("brandName"));       
	               dto.setPdImageUrl(rs.getString("pdImageUrl"));    
	               dto.setPdInfoImageUrl(rs.getString("pdInfoImageUrl")); 
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