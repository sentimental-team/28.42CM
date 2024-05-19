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
      

     int medium_ctgr_id = Integer.parseInt( request.getParameter("medium_ctgr_id") );
      
      PdListService listService = PdListService.getInstance();
      List<PdDTO> list = listService.selectMediumList(medium_ctgr_id);
      
      // 1. 포워딩 전에 데이터 저장
      request.setAttribute("list", list);

      String path = null;
      
      if ((medium_ctgr_id>=11 && medium_ctgr_id<=19) || (medium_ctgr_id>=110 && medium_ctgr_id<=112) ) {
          return path = "/sentiBoard/list/wm_cloth.jsp";
    } else if ((medium_ctgr_id>=113 && medium_ctgr_id<=121)) {
       return path = "/sentiBoard/list/wm_bag.jsp";
    } else if ((medium_ctgr_id>=122 && medium_ctgr_id<=129)) {
       return path = "/sentiBoard/list/wm_shoes.jsp";
    } else if ((medium_ctgr_id>=130 && medium_ctgr_id<=142)) {
       return path = "/sentiBoard/list/wm_jewelry.jsp";
    } else if ((medium_ctgr_id>=21 && medium_ctgr_id<=28)) {
       return path = "/sentiBoard/list/men_cloth.jsp";
    } else if (medium_ctgr_id==29 || (medium_ctgr_id>=210 && medium_ctgr_id<=220)) {
       return path = "/sentiBoard/list/men_bag.jsp";
    } else if (medium_ctgr_id>=221 && medium_ctgr_id<=227) {
       return path = "/sentiBoard/list/men_shoes.jsp";
    } else if (medium_ctgr_id>=228 && medium_ctgr_id<=241) {
       return path = "/sentiBoard/list/men_accessory.jsp";
    } else if ((medium_ctgr_id>=31 && medium_ctgr_id<=39) || (medium_ctgr_id>=310 && medium_ctgr_id<=311)) {
		// return path = 가구 , 인테리어
    	
	} else if (medium_ctgr_id>=41 && medium_ctgr_id<=45) {
		// return path = 주방, 생활
		return path = "/sentiBoard/list/kitchen_all.jsp";
	} else if (medium_ctgr_id>=51 && medium_ctgr_id <=59) {
		//return path = 가전
	} else if (medium_ctgr_id>=61 && medium_ctgr_id <=68) {
		//return path = 컴퓨터, 디지털
	  return path = "/sentiBoard/list/digital.jsp";
	} else if ((medium_ctgr_id>=71 && medium_ctgr_id<=79) || (medium_ctgr_id>=710 && medium_ctgr_id<=715)) {
		return path = "/sentiBoard/list/beautyboardlist.jsp";
	} else if (medium_ctgr_id>=81 && medium_ctgr_id<=84) {
		//return path = 푸드
	} else if (medium_ctgr_id>=91 && medium_ctgr_id<=99) {
		//return path = 러져
		return path = "/sentiBoard/list/leisure_all.jsp";
	} else if (medium_ctgr_id>=101 && medium_ctgr_id<=103) {
		//return path = 유아, 아동
	} else if (medium_ctgr_id==1101) {
		return path = "/sentiBoard/list/cultureBoardlist.jsp";
	}
		 
	
       return path;
    
   }

    

}