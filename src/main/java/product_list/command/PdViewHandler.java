package product_list.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import product_list.domain.PdDTO;
import product_list.service.PdListService;
import product_list.service.PdViewSerivce;

public class PdViewHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		
		   System.out.println("> PdViewHandler.process ...");
		
		   int pd_id = Integer.parseInt( request.getParameter("pd_id") );
		      
		   PdViewSerivce listService = PdViewSerivce.getInstance();
		      List<PdDTO> vlist = listService.viewProduct(pd_id);
		
		
		      request.setAttribute("vlist", vlist);
		      
		      
		return "/sentiBoard/view/viewDeatail.jsp";
	}

}
