package mypage.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import mypage.domain.MypageDTO;

public interface IMypage {
	List<MypageDTO> selectDeliveryList(Connection con, int pd_id) throws SQLException;
}
