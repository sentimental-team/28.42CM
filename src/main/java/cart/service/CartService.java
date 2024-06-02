package cart.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import cart.domain.CartDTO;
import cart.persistence.CartDAO;


public class CartService {
	 // 1. 싱글톤
	   private CartService() {}      
	   private static CartService instance = null;  
	   public static CartService getInstance() {   
	      if(   instance == null  ) {
	         instance = new CartService();
	      }
	      return instance;
	   }

	   public List<CartDTO> cartIn(int pd_id){
	      //
	      Connection con = null;
	      try {
	         con = ConnectionProvider.getConnection();
	         CartDAO dao = CartDAO.getInstance();
	         List<CartDTO> list = null;
	         list = dao.cartIn(con, pd_id);
	         return list;
	      } catch (NamingException | SQLException e) { 
	         //e.printStackTrace();  syso("ListService.select() 에러 : ")
	         throw new RuntimeException(e);
	      } finally {
	         JdbcUtil.close(con);
	      }
	   }//cartIn
	   
	   
	   
	   
}// class CartService
