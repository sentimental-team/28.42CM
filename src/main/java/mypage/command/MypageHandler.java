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
		
		String xxx = request.getParameter("delivery_state");
		System.out.println(">>>>>>>>>>>>>" + xxx);
		int member_id = Integer.parseInt(request.getParameter("delivery_state"));
		MypageService mypageService = MypageService.getinstance();
		List<MypageDTO> list = mypageService.selectDeliveryList(member_id);
		
		request.setAttribute("list", list);
		
		return "/sentiBoard/list/mypage_delivery.jsp";
	}

}
