package join.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import member.domain.MemberDTO;
import member.persistence.MemberDAO;
import member.persistence.MemberDAOImpl;



public class EmailCheckService {

	private MemberDAO memberDao;

    public boolean emailCheck(String email) {
		
		try (Connection conn = ConnectionProvider.getConnection()) {
			boolean emailCheckJson = memberDao.emailCheck(email); 
			System.out.println("> LoginService.idCheck : idCheckJson = " + emailCheckJson);
			return emailCheckJson;
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		} 
		
	}
}