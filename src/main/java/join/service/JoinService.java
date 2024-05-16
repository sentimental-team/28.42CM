package join.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import member.domain.MemberDTO;
<<<<<<< HEAD
import member.persistence.MemberDAO;
import member.persistence.MemberDAOImpl;
=======
import member.persistence.dao.MemberDAO;
import member.persistence.daoImpl.MemberDAOImpl;
>>>>>>> 1dd3f0e39d14b37671d1a52b0b90375d74357b93

public class JoinService {

	private MemberDAO memberDao;

	public JoinService() {
		try {
			Connection conn = ConnectionProvider.getConnection();
			this.memberDao = new MemberDAOImpl(conn);
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		}
	}

	public void join(JoinRequest joinRequest) {
		Connection conn = null;

		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);

<<<<<<< HEAD
			if (memberDao.emailCheck(joinRequest.getMember_email())) {
=======
			if (memberDao.emailCheck(joinRequest.getMemberEmail())) {
>>>>>>> 1dd3f0e39d14b37671d1a52b0b90375d74357b93
				JdbcUtil.rollback(conn);
				throw new DuplicateIdException();
			}

<<<<<<< HEAD
			validatePassword(joinRequest.getMember_pwd(), joinRequest.getConfirmPassword());

			MemberDTO memberDTO = new MemberDTO(
				0,  // memberId는 시퀀스로 자동 생성
				joinRequest.getMember_pwd(),
				joinRequest.getMember_email(),
				joinRequest.getMember_name(),
=======
			validatePassword(joinRequest.getMemberPwd(), joinRequest.getConfirmPassword());

			MemberDTO memberDTO = new MemberDTO(
				0,  // memberId는 시퀀스로 자동 생성
				joinRequest.getMemberPwd(),
				joinRequest.getMemberEmail(),
				joinRequest.getMemberName(),
>>>>>>> 1dd3f0e39d14b37671d1a52b0b90375d74357b93
				0,  // Default mileage
				0,  // Default coupon_id
				0,  // Default grade_id
				new java.util.Date()
			);

			memberDao.insert(memberDTO);
			conn.commit();
		} catch (SQLException | NamingException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	}

	private void validatePassword(String password, String confirmPassword) {
		if (!password.equals(confirmPassword)) {
			throw new RuntimeException("Passwords do not match");
		}
	}
}