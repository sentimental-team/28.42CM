package member.command;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.LoginRequest;
import member.service.LoginService;
import mvc.command.CommandHandler;

public class LoginHandler implements CommandHandler {

	// 로그인 페이지 경로
	private static final String LOGIN_VIEW = "/sentiBoard/user/login.jsp";
	// 로그인 성공 페이지 경로
	private static final String SUCCESS_VIEW = "/sentiBoard/user/loginSuccess.jsp";

	private LoginService loginService = new LoginService(); // 로그인 서비스 객체 생성

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	// 로그인 폼을 보여주는 메서드
	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		return LOGIN_VIEW; // 로그인 페이지로 이동
	}

	// 로그인 처리를 수행하는 메서드
	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String memberEmail = req.getParameter("username"); // 사용자가 입력한 이메일(아이디) 가져오기
		String memberPwd = req.getParameter("password"); // 사용자가 입력한 비밀번호 가져오기

		// 로그인 요청 객체 생성
		LoginRequest loginRequest = new LoginRequest(memberEmail, memberPwd);

		// 로그인 처리 및 사용자 정보를 세션에 저장
        int result = loginService.login(loginRequest);

        String path = req.getContextPath();
        if (result == 1) {
        	// 세션에 사용자 정보 저장
            req.getSession().setAttribute("memberEmail", memberEmail);

            // 쿠키에 사용자 정보 저장
            Cookie loginCookie = new Cookie("memberEmail", memberEmail);
            loginCookie.setMaxAge(60 * 60 * 24 * 30); // 30일 동안 유효
            loginCookie.setPath(path);
            res.addCookie(loginCookie);
            res.sendRedirect(path + "/sentiBoard/user/loginSuccess.jsp");
        } else {
            res.sendRedirect(path + "/sentiBoard/user/login.jsp?success=false");
        } 
        return null;
    }
}