package qnaboard.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import qnaboard.domain.InqDTO;

public interface I_Inq {

	List<InqDTO> selectInqList(Connection con, int member_id) throws SQLException;
	
	List<InqDTO> insertInqList(Connection con, int member_id) throws SQLException;
}
