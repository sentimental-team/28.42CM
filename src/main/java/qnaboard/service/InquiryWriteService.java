package qnaboard.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import qnaboard.domain.InqDTO;
import qnaboard.persistence.InqDAO;


public class InquiryWriteService {
	 // 1. 싱글톤
	   private InquiryWriteService() {}      
	   private static InquiryWriteService instance = null;  
	   public static InquiryWriteService getInstance() {   
	      if(   instance == null  ) {
	         instance = new InquiryWriteService();
	      }
	      return instance;
	   }

	   public List<InqDTO> insertInqList(int member_id){
	      //
	      Connection con = null;
	      try {
	         con = ConnectionProvider.getConnection();
	         InqDAO dao = InqDAO.getInstance();
	         List<InqDTO> list = null;
	         list = dao.selectInqList(con,member_id);
	         return list;
	         
	      } catch (NamingException | SQLException e) { 
	         //e.printStackTrace();  syso("ListService.select() 에러 : ")
	         throw new RuntimeException(e);
	      } finally {
	         JdbcUtil.close(con);
	      }
	   }
	}