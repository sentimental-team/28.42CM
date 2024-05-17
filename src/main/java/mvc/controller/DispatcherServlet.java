package mvc.controller;

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

import mvc.command.CommandHandler;


public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	public DispatcherServlet() {
        super();
        
    }
	
public Map<String, CommandHandler> commandHandlerMap = new HashMap<>();
    
    @Override
	public void init(ServletConfig config) throws ServletException {
    	super.init(config);
    	// System.out.println("> DispatcherServlet.init()...");
    	// web.xml <servlet><init-param><param-name>path</servlet>
    	String path = this.getInitParameter("configFile");
    	String realPath = this.getServletContext().getRealPath(path);
    	// C:\E\Class\Workspace\JSPClass\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\jspPro\WEB-INF\commandHandler.properties
    	// System.out.println(realPath);
    	
    	Properties prop = new Properties();
    	try (FileReader reader = new FileReader(realPath);){
			prop.load(reader);
		} catch (Exception e) {
			throw new ServletException();
		}
    	
    	// .properties -load() ->  prop<key, value>	  -> 	Map<url, 실제객체>
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
					CommandHandler handler = (CommandHandler) commandHandlerClass.newInstance();
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
    	
    	
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		process(request, response);
	}



	protected void process (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
				String requestURI = request.getRequestURI().toString();
				int beginIndex = request.getContextPath().length();
				requestURI = requestURI.substring(beginIndex);							
				CommandHandler handler = this.commandHandlerMap.get(requestURI);
				
				String view = null;
				try {
					view = handler.process(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}			
				if(view != null) {
					 
					RequestDispatcher dispatcher = request.getRequestDispatcher(view);
					dispatcher.forward(request, response);
				}
		
		
		
	}
}