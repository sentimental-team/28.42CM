package product_list.persistence;


import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import product_list.domain.PdDTO;




public interface IPd {
	
	//1. 미디업 카테고리 눌렀을 때 상품 리스트 출력
	List<PdDTO> selectMediumList(Connection con, int medium_ctr_id) throws SQLException;

	List<PdDTO> viewProduct(Connection con, int pd_id) throws SQLException;

	//2. 상품 이미지 눌렀을때 상세보기 페이지 출력.
	
}