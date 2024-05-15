package board.command.write;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.map.HashedMap;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import board.command.BoardCommandHandler;
import board.dto.ProductBoardRegisterDTO;
import board.persistence.dao.ProductBoardRegisterDAO;
import board.persistence.daoImpl.ProductBoardRegisterDAOImpl;

public class ProductRegisterHandler implements BoardCommandHandler {
		
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String method = request.getMethod();
		
		if (method.equals("GET")) {	// List.java doGet() 복사 붙이기
			return "/sentiBoard/write/productRegister.jsp";
		}
		else {
			request.setCharacterEncoding("UTF-8");
			
			String pdName = request.getParameter("pdName");
			int pdPrice = Integer.parseInt(request.getParameter("pdPriice"));
			String pdInfo = request.getParameter("pdInfo");
			int pdDiscountRate = Integer.parseInt(request.getParameter("pdDiscountRate"));
			String brandName = request.getParameter("brandName");
			int mainCtgr = Integer.parseInt(request.getParameter("mainCtgr"));
			int largeCtgr = Integer.parseInt(request.getParameter("largeCtgr"));
			int mediumCtgr = Integer.parseInt(request.getParameter("mediumCtgr"));
			int smallCtgr = Integer.parseInt(request.getParameter("smallCtgr"));
			
			Connection conn = ConnectionProvider.getConnection();
			ProductBoardRegisterDAOImpl dao = new ProductBoardRegisterDAOImpl(conn);
			int rowCount = 0;
			ProductBoardRegisterDTO dto = new ProductBoardRegisterDTO(0, pdName, pdPrice, pdInfo, pdDiscountRate, 1, brandName, mainCtgr, largeCtgr, mediumCtgr, smallCtgr );
			
			try {
				rowCount = dao.productRegister(dto);
			} catch (SQLException e) {
				System.out.println("> productRegister.doPost() Exception...");
				e.printStackTrace();
			}
			
			JdbcUtil.close(conn);
			
			// String location = "/sentiBoard/list/main.jsp";
			
		}
		
		return null;
		
	} // process
} // class	
