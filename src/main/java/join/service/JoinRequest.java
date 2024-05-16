package join.service;

import java.util.Map;
import java.util.regex.Pattern;

public class JoinRequest {

	private String member_pwd;
	private String member_email;
	private String member_name;
	private String confirmPassword;  // 비밀번호 확인 필드 추가
	
	public String getMember_pwd() {
		return member_pwd;
	}
	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public void validate(Map<String, Boolean> errors) {
		checkEmpty(errors, member_email, "member_email");
		checkEmpty(errors, member_pwd, "member_pwd");
		checkEmpty(errors, member_name, "member_name");
		checkEmpty(errors, confirmPassword, "confirmPassword");

		// 이메일 형식 검사 추가
		if (member_email != null && !Pattern.matches("^[A-Za-z0-9+_.-]+@(.+)$", member_email)) {
			errors.put("invalidEmail", Boolean.TRUE);
		}

		// 비밀번호와 확인 비밀번호가 일치하는지 검사
		if (member_pwd != null && !member_pwd.equals(confirmPassword)) {
			errors.put("confirmPassword", Boolean.TRUE);
		}
	}

	private void checkEmpty(Map<String, Boolean> errors, String value, String fieldName) {
		if (value == null || value.isEmpty()) {
			errors.put(fieldName, Boolean.TRUE);
		}
	}
}
