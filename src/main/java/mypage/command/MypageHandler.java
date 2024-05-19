package mypage.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import mypage.domain.MypageDTO;
import mypage.service.MypageService;

public class MypageHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("> MypageHandler.process() ...");
		
		String xxx = request.getParameter("pd_id");
		System.out.println(">>>>>>>>>>>>>" + xxx);
		int pd_id = Integer.parseInt(request.getParameter("pd_id"));
		MypageService mypageService = MypageService.getinstance();
		List<MypageDTO> dlist = mypageService.selectDeliveryList(pd_id);
		
		request.setAttribute("dlist", dlist);
		
		return "/sentiBoard/list/mypage_delivery.jsp";
	}

}
