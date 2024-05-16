package kids.command;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kids.domain.KidsAllDTO;
import kids.persistence.KidsAllDAO;
import kids.persistence.KidsAllDAOImpl;
import mvc.command.CommandHandler;

public class KidsAllHandler implements CommandHandler {

	private KidsAllDAO kidsAllDAO;

	public KidsAllHandler() {
		kidsAllDAO = new KidsAllDAOImpl();
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String mediumCtgrIdStr = request.getParameter("medium_ctgr_id");
		int mediumCtgrId = Integer.parseInt(mediumCtgrIdStr);

		List<KidsAllDTO> products = kidsAllDAO.getAllProductsByMediumCtgrId(mediumCtgrId);
		request.setAttribute("products", products);

		return "/WEB-INF/views/kids_all.jsp";
	}
}
