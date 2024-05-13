package domain;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

//@WebServlet("/*.ss")
public class leisureTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public leisureTestServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request
			, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();  // list.ss  write.ss  update.ss ...등등

		Connection conn = null;

		// MVC 패턴
		// commandHandler.properties  list.ss => ListHandler.java X
		// init()    commandHandlerMap <url, Handler>
		try {
			conn = ConnectionProvider.getConnection();

			if (uri.endsWith("leisure_main.ss")) { // 레저-메인		

				String path = "/jspPro/sentiBoard/list/leisure/leisure_main.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(path);
				dispatcher.forward(request, response);

			} else if (uri.endsWith("leisure_camping.ss")) { // 캠핑
				String path = "/jspPro/sentiBoard/list/leisure/leisure_camping.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(path);
				dispatcher.forward(request, response);

			} else if (uri.endsWith("leisure_hiking.ss")) { // 등산,하이킹
				String path = "/jspPro/sentiBoard/list/leisure/leisure_hiking.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(path);
				dispatcher.forward(request, response);

			} else if (uri.endsWith("leisure_golf.ss")) { // 골프
				String path = "/jspPro/sentiBoard/list/leisure/leisure_golf.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(path);
				dispatcher.forward(request, response);

			} else if (uri.endsWith("leisure_swiming.ss")) { // 수영
				String path = "/jspPro/sentiBoard/list/leisure/leisure_swiming.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(path);
				dispatcher.forward(request, response);

			} else if (uri.endsWith("leisure_running.ss")) { // 러닝
				String path = "/jspPro/sentiBoard/list/leisure/leisure_running.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(path);
				dispatcher.forward(request, response);

			} else if (uri.endsWith("leisure_indoor-exercise.ss")) { // 실내운동
				String path = "/jspPro/sentiBoard/list/leisure/leisure_indoor-exercise.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(path);
				dispatcher.forward(request, response);

			} else if (uri.endsWith("leisure_travel.ss")) { // 여행
				String path = "/jspPro/sentiBoard/list/leisure/leisure_travel.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(path);
				dispatcher.forward(request, response);

			} else if (uri.endsWith("leisure_tennis.ss")) { // 테니스
				String path = "/jspPro/sentiBoard/list/leisure/leisure_tennis.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(path);
				dispatcher.forward(request, response);

			} else if (uri.endsWith("leisure_bike.ss")) { // 자전거
				String path = "/jspPro/sentiBoard/list/leisure/leisure_bike.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(path);
				dispatcher.forward(request, response);
			}// if	

				response.sendRedirect("leisure_main.ss");	              	

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
		}

	}// doGet


protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; charset=UTF-8");

	doGet(request, response);
}

}
