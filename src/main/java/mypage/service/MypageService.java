package mypage.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import mypage.domain.MypageDTO;
import mypage.persistence.MypageDAO;

public class MypageService {
	
	private MypageService() {}
	private static MypageService instance = null;
	public static MypageService getinstance() {
		if(   instance == null  ) {
	         instance = new MypageService();
	      }
	      return instance;
	}
	
	public List<MypageDTO> selectDeliveryList(int delivery_state){
		
		Connection con = null;
		try {
			con = ConnectionProvider.getConnection();
			MypageDAO dao = MypageDAO.getInstance();
			List<MypageDTO> list = null;
			list = dao.selectDeliveryList(con, delivery_state);
			return list;
		} catch (NamingException | SQLException e) { 
	        throw new RuntimeException(e);
	    } finally {
	        JdbcUtil.close(con);
	    }
		
	}
}
