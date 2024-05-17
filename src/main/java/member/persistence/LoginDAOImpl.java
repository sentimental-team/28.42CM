package member.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.JdbcUtil;

import member.domain.LoginDTO;

public class LoginDAOImpl implements LoginDAO {

	private Connection conn;

	public LoginDAOImpl(Connection conn) {
		this.conn = conn;
	}

	@Override
	public int loginCheck(String memberEmail, String memberPwd) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int result = 0 ;
		try {
			String sql = "SELECT count(*) result FROM member WHERE member_email = ? AND member_pwd = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberEmail);
			pstmt.setString(2, memberPwd);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				result = rs.getInt("result");
			}
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return result;
	}
}