package board.command;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.util.ConnectionProvider;

import board.dto.FileUploadDTO;
import board.dto.ProductRegisterDTO;
import board.persistence.daoImpl.ProductRegisterDAOImpl;
import mvc.command.CommandHandler;

public class ProductRegisterHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String method =request.getMethod();
		
		Connection conn = ConnectionProvider.getConnection();
		if (method.equals("GET")) {
			ProductRegisterDAOImpl pr = new ProductRegisterDAOImpl(conn);
			ArrayList<ProductRegisterDTO> listDto = new ArrayList<>();
			
			listDto = pr.selectBrandInfo();
			request.setAttribute("listDto5", listDto);

			conn.close();
			return "/sentiBoard/write/productRegister.jsp";
		} else {
			Collection<Part> prs = request.getParts();
			
			ProductRegisterDAOImpl pr = new ProductRegisterDAOImpl(conn);
			
			
			String pdName = request.getParameter("pdName");
			String pdInfo = request.getParameter("pdInfo");
			int brandId = Integer.parseInt(request.getParameter("brand"));
			int pdPrice = Integer.parseInt(request.getParameter("pdPrice"));
			int pdDiscountRate = Integer.parseInt(request.getParameter("pdDiscountRate"));
			
			int mainCtgrId = Integer.parseInt(request.getParameter("mainCtgr"));
			int largeCtgrId = Integer.parseInt(request.getParameter("largeCtgr"));
			int mediumCtgrId = Integer.parseInt(request.getParameter("mediumCtgr"));
			String smallCtgrId = request.getParameter("smallCtgr");
			
			String pdImageUrl = request.getParameter("pdImageUrl");
			String pdInfoImageUrl = request.getParameter("pdInfoImageUrl");
			
			int rowCount = 1;
			if(smallCtgrId != null && !smallCtgrId.isEmpty()) {
				int smallCtgrIdNum = Integer.parseInt(smallCtgrId);
				ProductRegisterDTO pDto = new ProductRegisterDTO(0, pdName, pdInfo, brandId, pdPrice, pdDiscountRate, mainCtgrId, largeCtgrId, mediumCtgrId, smallCtgrIdNum);
				rowCount = pr.insertProductTable(pDto);
			} else {
				ProductRegisterDTO pDto = new ProductRegisterDTO(0, pdName, pdInfo, brandId, pdPrice, pdDiscountRate, mainCtgrId, largeCtgrId, mediumCtgrId);
				rowCount = pr.insertProductTableNonSmallCtgr(pDto);
			}
			
			
			
			for (Part part : prs) {
				if (part.getHeader("Content-Disposition").contains("filename=")) {
					
					
					if(part.getName().equals("pdImageUrl")) {
						UUID uuid = UUID.randomUUID();
						String fileName1  = part.getSubmittedFileName();
						String fileSystemName1 = uuid + fileName1;
						String realpath1 = request.getRealPath("/sentiBoard/upload/" + fileName1);
						
						System.out.println(">>>> "  + realpath1);
						
						if (part.getSize() > 0) {
							part.write( realpath1 ); // 저장	
						}
						FileUploadDTO fDto = new FileUploadDTO(0, realpath1, 0, fileSystemName1);
						rowCount = pr.insertProductImg(fDto);						
					}
					else {
						UUID uuid = UUID.randomUUID();
						String fileName1  = part.getSubmittedFileName();
						String fileSystemName1 = uuid + fileName1;
						String realpath1 = request.getRealPath("/sentiBoard/upload/" + fileName1);
						
						System.out.println(">>>> "  + realpath1);
						
						if (part.getSize() > 0) {
							part.write( realpath1 ); // 저장	
						}
						FileUploadDTO fDto = new FileUploadDTO(realpath1, fileSystemName1);
						rowCount = pr.insertProductInfoImg(fDto);
					}
				} 
			}
			

			conn.close();
			response.sendRedirect(request.getRequestURI());
			return null;
		}
	}

	


}