package member.domain;

import java.util.Date;

public class MemberDTO {

	private int member_id;
	private String member_pwd;
	private String member_name;
	private String member_email;
	private int mileage;
	private int coupon_id;
	private int grade_id;
	private Date regdate;

	public MemberDTO(int member_id, String member_pwd, String member_name, String member_email, int mileage, int coupon_id, int grade_id, Date regdate) {
		this.member_id = member_id;
		this.member_pwd = member_pwd;
		this.member_name = member_name;
		this.member_email = member_email;
		this.mileage = mileage;
		this.coupon_id = coupon_id;
		this.grade_id = grade_id;
		this.regdate = regdate;
	}

	// Getter와 Setter 메서드
	public int getMember_id() {
		return member_id;
	}

	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}

	public String getMember_pwd() {
		return member_pwd;
	}

	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public int getMileage() {
		return mileage;
	}

	public void setMileage(int mileage) {
		this.mileage = mileage;
	}

	public int getCoupon_id() {
		return coupon_id;
	}

	public void setCoupon_id(int coupon_id) {
		this.coupon_id = coupon_id;
	}

	public int getGrade_id() {
		return grade_id;
	}

	public void setGrade_id(int grade_id) {
		this.grade_id = grade_id;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
}