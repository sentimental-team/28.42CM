package board.command;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import board.dto.ProductRegisterDTO;
import board.persistence.daoImpl.ProductRegisterDAOImpl;
import mvc.command.CommandHandler;

public class ProductRegisterHandler implements CommandHandler {

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
			ProductRegisterDAOImpl dao = new ProductRegisterDAOImpl(conn);
			int rowCount = 0;
			ProductRegisterDTO dto = new ProductRegisterDTO(0, pdName, pdPrice, pdInfo, pdDiscountRate, 1, brandName, mainCtgr, largeCtgr, mediumCtgr, smallCtgr );
			
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

	}

}
