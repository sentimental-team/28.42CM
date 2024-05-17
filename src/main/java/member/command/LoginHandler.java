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

	
	// 로그인 페이지 경로
    private static final String LOGIN_VIEW = "/WEB-INF/view/sentiBoard/user/login.jsp";

    private LoginService loginService = new LoginService(); // 로그인 서비스 객체 생성

    @Override
    public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
        // 요청이 GET 방식인 경우 로그인 폼을 보여줌
        if (req.getMethod().equalsIgnoreCase("GET")) {
            return processForm(req, res);
        } 
        // 요청이 POST 방식인 경우 로그인 처리를 수행
        else if (req.getMethod().equalsIgnoreCase("POST")) {
            return processSubmit(req, res);
        } 
        // 그 외의 요청 방식은 허용되지 않음
        else {
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

        // 오류를 담을 맵 생성
        Map<String, Boolean> errors = new HashMap<>();
        req.setAttribute("errors", errors);

        // 입력된 로그인 정보 유효성 검사
        loginRequest.validate(errors);

        // 오류가 있는 경우 로그인 페이지로 이동
        if (!errors.isEmpty()) {
            return LOGIN_VIEW;
        }

        try {
            // 로그인 처리 및 사용자 정보를 세션에 저장
            LoginDTO loginDTO = loginService.login(loginRequest);
            req.getSession().setAttribute("authUser", loginDTO);

            // 원래의 URL로 리다이렉트
            String originalURL = (String) req.getSession().getAttribute("originalURL");
            if (originalURL != null) {
                req.getSession().removeAttribute("originalURL");
                res.sendRedirect(originalURL); // 원래의 URL로 리다이렉트
                return null;
            }

            // 기본 페이지로 리다이렉트
            res.sendRedirect(req.getContextPath() + "/");
            return null;
        } catch (RuntimeException e) {
            // 로그인 실패 시 오류 메시지 설정 후 로그인 페이지로 이동
            errors.put("invalidLogin", Boolean.TRUE);
            return LOGIN_VIEW;
        }
    }
}