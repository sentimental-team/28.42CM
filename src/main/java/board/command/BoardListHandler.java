package board.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dto.ProductBoardDTO;
import board.service.BoardListService;



public class BoardListHandler implements BoardCommandHandler{

   @Override
   public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
      System.out.println("> ListHandler.process ...");

      int medium_ctgr_id = Integer.parseInt( request.getParameter("medium_ctgr_id") );
      
      BoardListService listService = BoardListService.getInstance();
      List<ProductBoardDTO> list = listService.selectMediumList(medium_ctgr_id);
      
      // 1. 포워딩 전에 데이터 저장
      request.setAttribute("list", list);
      
      
      return "/sentiBoard/list/men_cloth.jsp";
   }

    

}