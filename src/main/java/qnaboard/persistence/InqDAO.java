package qnaboard.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import qnaboard.domain.InqDTO;

public class InqDAO implements I_Inq {
	//싱글톤
	   private InqDAO() {}
	   private static InqDAO instance = new InqDAO();
	   public static InqDAO getInstance() {
	      return instance;
	   }
	   
	@Override
	public List<InqDTO> selectInqList(Connection con, int inquiry_id) throws SQLException {
		
		
		String sql = "select i.inquiry_id, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_DATE, i.buy_inquiry, i.etc_inquiry, i.general_inquiry_id, i.member_id\r\n"
				+ "from inquiry i\r\n"
				+ "JOIN buy_inquiry b ON b.buy_inquiry = i.buy_inquiry\r\n"
				+ "JOIN general_inquiry g ON g.general_inquiry_id = i.general_inquiry_id\r\n"
				+ "JOIN etc_inquiry e ON e.etc_inquiry = i.etc_inquiry\r\n"
				+ "JOIN member m ON m.member_id = i.member_id\r\n"
				+ "WHERE i.member_id = ? "; 
				
				
		  ArrayList<qnaboard.domain.InqDTO> list = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      
	      try {
	         pstmt = con.prepareStatement(sql);
	         pstmt.setInt(1,inquiry_id);
	         rs = pstmt.executeQuery();
	         if ( rs.next() ) {
	            list = new ArrayList<InqDTO>();
	            InqDTO dto = null;
	            do {
	               dto =  new InqDTO();

	               dto.setInquiryId(rs.getInt("INQUIRY_ID"));
	               dto.setInquiryTitle(rs.getString("INQUIRY_TITLE"));
	               dto.setInquiryContent( rs.getString("INQUIRY_CONTENT"));
	               dto.setInquiryDate( rs.getDate("INQUIRY_DATE"));   
	               dto.setBuyInquiry(rs.getInt("BUY_INQUIRY"));
	               dto.setEtcInquiry(rs.getInt("ETC_INQUIRY"));
	               dto.setGeneralInquiryId(rs.getInt("GENERAL_INQUIRY_ID"));               
	               dto.setMemberId(rs.getInt("MEMBER_ID"));       
	               
	               
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

	