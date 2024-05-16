package member.domain;

public class LoginDTO {

	private int memberId;
	private String memberEmail;
	private String memberName;

	public LoginDTO(int memberId, String memberEmail, String memberName) {
		this.memberId = memberId;
		this.memberEmail = memberEmail;
		this.memberName = memberName;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
}