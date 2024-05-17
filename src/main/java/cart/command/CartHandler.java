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
	      
	    
	      
	      
		return "/sentiBoard/user/cart.jsp";
	      
	    


	  }
}
