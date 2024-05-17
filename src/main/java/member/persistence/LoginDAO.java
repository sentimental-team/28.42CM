package member.persistence;

import java.sql.SQLException;

import member.domain.LoginDTO;

public interface LoginDAO {

	// 이메일과 비밀번호로 로그인 체크
	int loginCheck(String memberEmail, String memberPwd) throws SQLException;
}
