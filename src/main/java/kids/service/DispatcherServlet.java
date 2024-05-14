package kids.service;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kids.command.KidsAllHandler;



//@WebServlet("/DispatcherServlet")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DispatcherServlet() {
		super();

	}
	// 키값은 요청 url  /board/list.do new ListHandler() 
	public Map<String, KidsAllHandler > CommandHandlerMap = new HashMap<>();

	@Override
	public void init() throws ServletException {

		super.init();

		System.out.println(">DispatcherServlet.init()");
		// web.xml <servlet><init-param>path</init-param></servlet>
		String path = this.getInitParameter("path");
		String realpath = this.getServletContext().getRealPath(path);
		//System.out.println(realpath);
		Properties prop = new Properties();
		try (FileReader reader = new FileReader(realpath)){
			prop.load(reader);
		} catch (Exception e) {
			throw new ServletException();
		}
		// .properties load() ->  prop<key,value> ->	Map<url, 실제객체>
		Set<Entry<Object, Object>> set = prop.entrySet();
		Iterator<Entry<Object, Object>> ir =set.iterator();
		while (ir.hasNext()) {
			Entry<Object, Object> entry  =ir.next();
			String url = (String) entry.getKey(); // Map<key>
			String className =  (String) entry.getValue();

			Class<?> commandHandlerClass = null ;
			try {
				commandHandlerClass = Class.forName(className);
				try {
					KidsAllHandler handler = (KidsAllHandler) commandHandlerClass.newInstance();
					CommandHandlerMap.put(url, handler); // 맵 추가
				} catch (InstantiationException e) {
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					e.printStackTrace();
				}
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} // try
		} // while
	} // init

	@Override
	public void destroy() {
		//System.out.println(">DispatcherServlet.destroy()");
		super.destroy();
	} // destroy



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String requestURL = request.getRequestURL().toString();
		//System.out.println(requestURL);
		//request.getRequestURI();
		String requestURI = request.getRequestURI();
		int beginIndex = request.getContextPath().length(); // "jspPro"
		requestURI = requestURI.substring(beginIndex);
		System.out.println(requestURI);
		KidsAllHandler handler = this.CommandHandlerMap.get(requestURI);

		String view= null ; //M[V]C
		try {
			view = handler.process(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} // try
		// 리다이렉트 또는 포워딩
		if (view !=null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		} // if
	} // doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
} // doPost