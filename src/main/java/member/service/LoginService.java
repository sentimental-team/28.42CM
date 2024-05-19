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

	public int login(LoginRequest loginRequest) {
		Connection conn = null;

		try {
			conn = ConnectionProvider.getConnection();
		

			int result = loginDAO.loginCheck(loginRequest.getMemberEmail(), loginRequest.getMemberPwd());
			
			return result;
		} catch (SQLException | NamingException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
}
