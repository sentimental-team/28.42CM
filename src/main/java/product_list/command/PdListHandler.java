package product_list.command;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import product_list.domain.PdDTO;
import product_list.service.PdListService;




public class PdListHandler implements CommandHandler{

   @Override
   public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	   
      System.out.println("> ListHandler.process ...");
      
     String xxx =  request.getParameter("medium_ctgr_id") ;
     
     System.out.println(">>>>>>>>>>>>>>"  + xxx);

     int medium_ctgr_id = Integer.parseInt( request.getParameter("medium_ctgr_id") );
      
      PdListService listService = PdListService.getInstance();
      List<PdDTO> list = listService.selectMediumList(medium_ctgr_id);
      
      // 1. 포워딩 전에 데이터 저장
      request.setAttribute("list", list);
      
      String path = null;
      
      if ((medium_ctgr_id>=11 && medium_ctgr_id<=19) || (medium_ctgr_id>=110 && medium_ctgr_id<=112) ) {
    	  return path = "/sentiBoard/list/wn_cloth.jsp";
	} else if (medium_ctgr_id>=21 && medium_ctgr_id<=28) {
		return path = "/sentiBoard/list/men_cloth.jsp";
	}
      return path;
   }

    

}