package member.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import member.domain.LoginDTO;
import member.persistence.LoginDAO;
import member.persistence.LoginDAOImpl;

public class LoginService {

	private LoginDAO loginDAO;

	public LoginService() {
		try {
			Connection conn = ConnectionProvider.getConnection();
			this.loginDAO = new LoginDAOImpl(conn);
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		}
	}

	public LoginDTO login(LoginRequest loginRequest) {
		Connection conn = null;

		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);

			LoginDTO loginDTO = loginDAO.loginCheck(loginRequest.getMemberEmail(), loginRequest.getMemberPwd());
			if (loginDTO == null) {
				throw new RuntimeException("잘못된 이메일 또는 비밀번호 입니다.");
			}

			conn.commit();
			return loginDTO;
		} catch (SQLException | NamingException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
}
