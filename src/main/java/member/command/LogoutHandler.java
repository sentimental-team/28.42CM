package member.command;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mvc.command.CommandHandler;

public class LogoutHandler implements CommandHandler {

    private static final String LOGOUT_VIEW = "/sentiBoard/user/logout.jsp"; // 로그아웃 성공 페이지

    @Override
    public String process(HttpServletRequest req, HttpServletResponse res) {
        HttpSession session = req.getSession(false);
        if (session != null) {
            session.invalidate(); // 세션 무효화
        }
        
        // 로그인 쿠키 제거
        Cookie loginCookie = new Cookie("memberEmail", null);
        loginCookie.setMaxAge(0); // 쿠키 즉시 만료
        loginCookie.setPath(req.getContextPath());
        res.addCookie(loginCookie);

        // 원래 페이지 URL 가져오기
        String originalURL = req.getHeader("Referer");
        if (originalURL == null || originalURL.contains("logout")) {
            originalURL = req.getContextPath() + "/sentiBoard/write/main.jsp"; // 기본 페이지 URL
        }
        req.setAttribute("originalURL", originalURL);

        return LOGOUT_VIEW; // 로그아웃 성공 페이지로 이동
    }
}