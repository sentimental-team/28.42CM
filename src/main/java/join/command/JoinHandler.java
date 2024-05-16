package join.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import join.service.DuplicateIdException; // 중복된 이메일 처리에 사용
import join.service.JoinRequest;
import join.service.JoinService;
import mvc.command.CommandHandler;

public class JoinHandler implements CommandHandler {
 
	private static final String JOIN_VIEW = "/WEB-INF/view/joinForm.jsp"; // 회원가입 페이지
	private static final String SUCCESS_VIEW = "/WEB-INF/view/joinSuccess.jsp"; // 회원가입 성공 페이지

	private JoinService joinService = new JoinService();

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
		return JOIN_VIEW;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) {
		JoinRequest joinRequest = new JoinRequest();
		
		joinRequest.setMember_email(req.getParameter("member_email"));
		joinRequest.setMember_name(req.getParameter("member_name"));
		joinRequest.setMember_pwd(req.getParameter("member_pwd"));
		joinRequest.setConfirmPassword(req.getParameter("confirmPassword"));
		
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);
		
		joinRequest.validate(errors);
		
		if (!errors.isEmpty()) {
			return JOIN_VIEW;
		}
		
		try {
			joinService.join(joinRequest);
			return SUCCESS_VIEW;
		} catch (DuplicateIdException e) {
			errors.put("duplicateId", Boolean.TRUE);
			return JOIN_VIEW;
		}
	}
}
