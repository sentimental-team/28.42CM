package member.persistence;

import java.sql.SQLException;

import member.domain.MemberDTO;

public interface MemberDAO {

	// 이메일 유효성 검사
	boolean emailCheck(String member_email) throws SQLException;
	
	// 아이디 중복 체크
	int emailDupliCheck(String member_email) throws SQLException;
	
	// 비밀번호 확인
	boolean pwdCheck(String member_email, String member_pwd) throws SQLException;
	
	// 회원가입 완료
	int insert(MemberDTO dto) throws SQLException;
	
	// 이메일로 회원 조회
	MemberDTO selectByEmail(String member_email) throws SQLException;
}
