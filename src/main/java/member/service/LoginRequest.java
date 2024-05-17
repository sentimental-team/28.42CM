package member.service;

import java.util.Map;

public class LoginRequest {

	private String memberEmail;
	private String memberPwd;
	
	// 생성자
	public LoginRequest(String memberEmail, String memberPwd) {
		this.memberEmail = memberEmail;
		this.memberPwd = memberPwd;
	}

	// Getter 및 Setter 메서드
	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberPwd() {
		return memberPwd;
	}

	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}

	// 유효성 검사 메서드
	public void validate(Map<String, Boolean> errors) {
		checkEmpty(errors, memberEmail, "memberEmail");
		checkEmpty(errors, memberPwd, "memberPwd");
	}

	private void checkEmpty(Map<String, Boolean> errors, String value, String fieldName) {
		if (value == null || value.isEmpty()) {
			errors.put(fieldName, Boolean.TRUE);
		}
	}
}