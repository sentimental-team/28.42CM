package board.controller;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.command.BoardCommandHandler;
import board.command.BoardNullHandler;

public class ControllerUsingURI extends HttpServlet{
	
	private Map<String, BoardCommandHandler> commandHandlerMap = new HashMap<>();
	
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
    	String path = this.getInitParameter("path");
    	String realPath = this.getServletContext().getRealPath(path);
    	
    	Properties prop = new Properties();
    	try (FileReader reader = new FileReader(realPath);){
			prop.load(reader);
		} catch (Exception e) {
			throw new ServletException();
		}
		
    	Set<Entry<Object, Object>> set = prop.entrySet();
    	Iterator<Entry<Object, Object>> ir = set.iterator();
    	while (ir.hasNext()) {
			Entry<Object, Object> entry = ir.next();
			String url = (String) entry.getKey();	// Map<key>
			String className = (String) entry.getValue();
			
			Class<?> commandHandlerClass = null;
			
			try {
				commandHandlerClass = Class.forName(className);
				try {
					BoardCommandHandler handler = (BoardCommandHandler) commandHandlerClass.newInstance();
					this.commandHandlerMap.put(url, handler);	// 맵 추가
				} catch (InstantiationException e) {
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					e.printStackTrace();
				}
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			
		}
		
		
	} // init()
	
	@Override
	public void destroy() {
		super.destroy();
		// System.out.println("> DispatcherServlet.destroy()...");
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI().toString();
		
		int beginIndex = request.getContextPath().length();
		requestURI = requestURI.substring(beginIndex);
		
		BoardCommandHandler handler = this.commandHandlerMap.get(requestURI);
		
		String view = null; 
		try {
			view = handler.process(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 리다이렉트 또는 포워딩
		if(view != null) {
			// 포워딩 
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}
		
	} // process()
	
	
	
	
} // class
