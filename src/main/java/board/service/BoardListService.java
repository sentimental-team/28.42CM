package board.service;


import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import board.dto.ProductBoardDTO;
import board.persistence.dao.ProductBoardDAO;



public class BoardListService {
   
   // 1. 싱글톤
   private BoardListService() {}      
   private static BoardListService instance = null;  
   public static BoardListService getInstance() {   
      if(   instance == null  ) {
         instance = new BoardListService();
      }
      return instance;
   }

   public List<ProductBoardDTO> selectMediumList(int medium_ctgr_id){
      //
      Connection con = null;
      try {
         con = ConnectionProvider.getConnection();
         ProductBoardDAO dao = ProductBoardDAO.getInstance();
         List<ProductBoardDTO> list = null;
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