package product_list.service;


import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import product_list.domain.PdDTO;
import product_list.persistence.PdDAO;



public class PdListService {
   
   // 1. 싱글톤
   private PdListService() {}      
   private static PdListService instance = null;  
   public static PdListService getInstance() {   
      if(   instance == null  ) {
         instance = new PdListService();
      }
      return instance;
   }

   public List<PdDTO> selectMediumList(int medium_ctgr_id){
      //
      Connection con = null;
      try {
         con = ConnectionProvider.getConnection();
         PdDAO dao = PdDAO.getInstance();
         List<PdDTO> list = null;
         list = dao.selectMediumList(con,medium_ctgr_id);
         return list;
      } catch (NamingException | SQLException e) { 
         //e.printStackTrace();  syso("ListService.select() 에러 : ")
         throw new RuntimeException(e);
      } finally {
         JdbcUtil.close(con);
      }
   }
}