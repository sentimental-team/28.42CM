package product_list.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import product_list.domain.PdDTO;
import product_list.persistence.PdDAO;

public class PdViewSerivce {
	 
	   // 1. 싱글톤
	   private PdViewSerivce() {}      
	   private static PdViewSerivce instance = null;  
	   public static PdViewSerivce getInstance() {   
	      if(   instance == null  ) {
	         instance = new PdViewSerivce();
	      }
	      return instance;
	   }

	   public List<PdDTO> viewProduct(int pd_id){
	      //
	      Connection con = null;
	      try {
	         con = ConnectionProvider.getConnection();
	         PdDAO dao = PdDAO.getInstance();
	         List<PdDTO> list = null;
	         list = dao.viewProduct(con,pd_id);
	         return list;
	      } catch (NamingException | SQLException e) { 
	         //e.printStackTrace();  syso("ListService.select() 에러 : ")
	         throw new RuntimeException(e);
	      } finally {
	         JdbcUtil.close(con);
	      }
	   }
}
