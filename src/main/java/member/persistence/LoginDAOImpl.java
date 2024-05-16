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
	public LoginDTO loginCheck(String memberEmail, String memberPwd) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		LoginDTO loginDTO = null;

		try {
			String sql = "SELECT member_id, member_email, member_name FROM member WHERE member_email = ? AND member_pwd = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberEmail);
			pstmt.setString(2, memberPwd);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				loginDTO = new LoginDTO(
					rs.getInt("member_id"),
					rs.getString("member_email"),
					rs.getString("member_name")
				);
			}
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return loginDTO;
	}
}
