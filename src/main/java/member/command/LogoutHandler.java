package member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mvc.command.CommandHandler;

public class LogoutHandler implements CommandHandler {

	private static final String LOGOUT_VIEW = "/WEB-INF/view/logoutSuccess.jsp"; // 로그아웃 성공 후 페이지 (수정필요)

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) {
		HttpSession session = req.getSession(false);
		if (session != null) {
			session.invalidate();
		}
		return LOGOUT_VIEW;
	}
}