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
		
		
		String sql =" SELECT p.PD_ID, pd_name, pd_price, pd_info, pd_sales_quantity, pd_discount_rate"
				+ " ,p.brand_id, brand_name, Pd_Image_Url, pd_info_image_url ,p.Medium_Ctgr_Id, pd_grade, c.medium_ctgr_name,p.pd_id "
				+ " FROM product p"
				+ " JOIN brand b on p.brand_id =b.brand_id"
				+ " join PRODUCT_IMAGE i on p.pd_id = i.pd_id"
				+ " join PRODUCT_GRADE g  on p.pd_id=g.pd_id"
				+ " join MEDIUM_CTGR c on p.medium_ctgr_id = c.medium_ctgr_id"
				+ " WHERE p.medium_ctgr_id= ?";
				
				
				
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

	               
	              
	               dto.setPdId(rs.getInt("PD_ID"));
	               dto.setPdName(rs.getString("pd_name"));
	               dto.setPdPrice( rs.getInt("pd_price"));
	               dto.setPdInfo( rs.getString("pd_info"));   
	               dto.setPdSalesQuantity(rs.getInt("pd_sales_quantity"));
	               dto.setPdDiscountRate(rs.getInt("pd_discount_rate"));
	               dto.setBrandId(rs.getInt("brand_id"));               
	               dto.setBrandName(rs.getString("brand_name"));       
	               dto.setPdImageUrl(rs.getString("Pd_Image_Url"));    
	               dto.setPdInfoImageUrl(rs.getString("pd_info_image_url")); 
	               dto.setMedium_ctgr_id(rs.getInt("Medium_Ctgr_Id"));
	               dto.setPdGrade(rs.getInt("pd_grade"));
	               dto.setMedium_ctgr_name(rs.getString("medium_ctgr_name"));
	               dto.setPd_id(rs.getInt("pd_id"));
	               
	               
	                
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
	@Override
	public List<PdDTO> viewProduct(Connection con, int pd_id) throws SQLException {
	
		
		String sql =" select pd_name, pd_image_url, pd_price, pd_discount_rate, delivery_pay, pd_content, pd_option_name, pd_info_image_url,  review_content"
				+ " from product p"
				+ " join PRODUCT_IMAGE i on p.pd_id=i.pd_id"
				+ " join PAY y on p.pd_id= y.pd_id\r\n"
				+ " join DELIVERY d on d.pay_id = y.pay_id"
				+ " join PRODUCT_QNA n on p.pd_id = n.pd_id"
				+ " join PRODUCT_REVIEW w on w.pd_id = p.pd_id"
				+ " join PRODUCT_OPTION t on t.large_ctgr_id =p.large_ctgr_id"
				+ " where p.pd_id =?";
				
		

		
		 ArrayList<PdDTO> list = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	    

	      try {
	         pstmt = con.prepareStatement(sql);
	         pstmt.setInt(1,pd_id);
	         rs = pstmt.executeQuery();
	         if ( rs.next() ) {
	            list = new ArrayList<PdDTO>();
	            PdDTO dto = null;
	            do {
	               dto =  new PdDTO();
	               
	              
	             //  상품제목, 상품사진, 상품가격, 할인율, 배송비, 옵션, 내 , 상품설명 이미지, 리뷰, qna, 

	               dto.setPdName(rs.getString("pd_name"));
	               dto.setPdImageUrl(rs.getString("pd_image_url"));
	               dto.setPdPrice(rs.getInt("pd_price"));
	               dto.setPdDiscountRate(rs.getInt("pd_discount_rate"));
	               dto.setDeliveryPay(rs.getInt("delivery_pay"));	
	               dto.setPdContent(rs.getString("pd_content"));	              
	               dto.setPdOptionName(rs.getString("pd_option_name"));
	               dto.setPdInfoImageUrl(rs.getString("pd_info_image_url"));	
	               dto.setReviewContent(rs.getString("review_content"));
	             
	            
	                
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