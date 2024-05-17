package member.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.domain.LoginDTO;
import member.service.LoginRequest;
import member.service.LoginService;
import mvc.command.CommandHandler;

public class LoginHandler implements CommandHandler {

	private static final String LOGIN_VIEW = "/WEB-INF/view/loginForm.jsp"; // 로그인 페이지 (수정필요)
	private static final String SUCCESS_VIEW = "/WEB-INF/view/loginSuccess.jsp"; // 로그인 성공 후 페이지 (수정필요)

	private LoginService loginService = new LoginService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) {
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		return LOGIN_VIEW;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) {
		LoginRequest loginRequest = new LoginRequest();
		
		loginRequest.setMemberEmail(req.getParameter("username"));
		loginRequest.setMemberPwd(req.getParameter("password"));
		
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);
		
		loginRequest.validate(errors);
		
		if (!errors.isEmpty()) {
			return LOGIN_VIEW;
		}
		
		try {
			LoginDTO loginDTO = loginService.login(loginRequest);
			req.getSession().setAttribute("authUser", loginDTO);
			return SUCCESS_VIEW;
		} catch (RuntimeException e) {
			errors.put("invalidLogin", Boolean.TRUE);
			return LOGIN_VIEW;
		}
	}
}
