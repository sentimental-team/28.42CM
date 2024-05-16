package product_list.persistence;


import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import product_list.domain.PdDTO;




public interface IPd {
	
	List<PdDTO> selectMediumList(Connection con, int medium_ctr_id) throws SQLException;

}