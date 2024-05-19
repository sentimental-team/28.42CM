package qnaboard.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import qnaboard.domain.InqDTO;
import qnaboard.service.InquiryListService;


public class InquiryListHandler implements CommandHandler {

	@Override
	   public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		   
	      System.out.println("> InquiryListHandler.process ...");
	      
	     String xxx =  request.getParameter("member_id") ;
	     
	     System.out.println(">>>>>>>>>>>>>>"  + xxx);

	     int member_id = Integer.parseInt( request.getParameter("member_id") );
	      
	      InquiryListService listService = InquiryListService.getInstance();
	      List<InqDTO> list = listService.selectInqList(member_id);
	      
	      // 1. 포워딩 전에 데이터 저장
	      request.setAttribute("list", list);
	      
	      String path = null;
	      
	      if ( member_id >= 0)  {
	    	  return path = "/sentiBoard/list/inquiry_list.jsp";
		} else if ( member_id < 0 ) {
			return path = "/sentiBoard/user/login.jsp";
		}
	      return path;
	   }

	

}
