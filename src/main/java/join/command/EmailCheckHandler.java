package join.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import join.service.DuplicateIdException; // 중복된 이메일 처리에 사용
import join.service.EmailCheckService;
import join.service.JoinRequest;
import join.service.JoinService;
import mvc.command.CommandHandler;

public class EmailCheckHandler implements CommandHandler {

	private EmailCheckService emailCheckService = new EmailCheckService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		 
		// 중복체크할 ID 
		String email = trim(req.getParameter("email"));	
		
		System.out.println("> EmailCheckHandler .... ");
		
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);
		if (email == null || email.isEmpty())
			errors.put("email", Boolean.TRUE); 
		if (!errors.isEmpty()) {
			return null;
		}
		
		try {
			String emailCheck = emailCheckService.emailCheck(email)? "1":"0"; 
			
			return emailCheck;
		} catch ( Exception e) {
			errors.put("idCheck", Boolean.TRUE);
			return null;
		} 
	}
	
	private String trim(String str) {
		return str == null ? null : str.trim();
	}

}
