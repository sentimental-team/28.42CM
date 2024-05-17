package cart.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cart.domain.CartDTO;
import cart.service.CartService;
import mvc.command.CommandHandler;



public class CartHandler implements CommandHandler {
	  @Override
	   public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		   
	      System.out.println("> ListHandler.process ...");
	      

	     int pd_id = Integer.parseInt( request.getParameter("pd_id") );	     
	     CartService cartService = CartService.getInstance();
	      List<CartDTO> list = cartService.cartIn(pd_id);
	      
	      // 1. 포워딩 전에 데이터 저장
	      request.setAttribute("list", list);
	      int totalPayPrice = 0;
	      int totalDeliveryPay = 0;
	      int totalCnt = 0;
	      int totalChargePay = 0;
	      for (CartDTO cart : list) {
			totalPayPrice += cart.getPdPrice();
			totalDeliveryPay += cart.getDeliveryPay();
			totalCnt = cart.getCnt();
			totalChargePay += cart.getPdPrice() + cart.getDeliveryPay();
		}
	     
	    request.setAttribute("totalPayPrice", totalPayPrice);
	    request.setAttribute("totalDeliveryPay", totalDeliveryPay);
	    request.setAttribute("totalCnt", totalCnt);
	    request.setAttribute("totalChargePay", totalChargePay);
	    
		return "/sentiBoard/user/cart.jsp";
	      
	    


	  }
}
