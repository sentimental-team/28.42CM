package member.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.JdbcUtil;

import member.domain.MemberDTO;

public class MemberDAOImpl implements MemberDAO {

	private Connection conn = null;

	public MemberDAOImpl(Connection conn) {
		this.conn = conn;
	}

	@Override
	public boolean emailCheck(String member_email) throws SQLException {
		boolean exists = false;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT member_email FROM member WHERE member_email = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member_email);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				exists = true;
			}
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return exists;
	}

	@Override
	public int emailDupliCheck(String member_email) throws SQLException {
		return emailCheck(member_email) ? 1 : 0;
	}

	@Override
	public boolean pwdCheck(String member_email, String member_pwd) throws SQLException {
		boolean isValid = false;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT member_pwd FROM member WHERE member_email = ? AND member_pwd = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member_email);
			pstmt.setString(2, member_pwd);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				isValid = true;
			}
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return isValid;
	}

	@Override
	public int insert(MemberDTO dto) throws SQLException {
		int rowCount = 0;
		PreparedStatement pstmt = null;

		try {
			String sql = "INSERT INTO member (member_id, member_pwd, member_email, member_name) VALUES (seq_member_id.NEXTVAL, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getMember_pwd());
			pstmt.setString(2, dto.getMember_email());
			pstmt.setString(3, dto.getMember_name());
			rowCount = pstmt.executeUpdate();
		} finally {
			JdbcUtil.close(pstmt);
		}
		return rowCount;
	}

	@Override
	public MemberDTO selectByEmail(String member_email) throws SQLException {
		MemberDTO member = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM member WHERE member_email = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member_email);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				member = new MemberDTO(
					rs.getInt("member_id"),
					rs.getString("member_pwd"),
					rs.getString("member_email"),
					rs.getString("member_name"),
					rs.getInt("mileage"),
					rs.getInt("coupon_id"),
					rs.getInt("grade_id"),
					rs.getTimestamp("regdate")
				);
			}
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return member;
	}
}
