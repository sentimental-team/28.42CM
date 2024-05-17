package board.persistence.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import board.dto.FileUploadDTO;
import board.dto.ProductRegisterDTO;

public interface ProductRegisterDAO {
	// 상품 등록
	int  productRegister(ProductRegisterDTO pDto, FileUploadDTO fDto) throws SQLException;
	
	ArrayList<ProductRegisterDTO> selectMainCategoryInfo();
	ArrayList<ProductRegisterDTO> selectLargeCategoryInfo();
	ArrayList<ProductRegisterDTO> selectMediumCategoryInfo();
	ArrayList<ProductRegisterDTO> selectSmallCategoryInfo();
	
	ArrayList<ProductRegisterDTO> selectBrandInfo();
	ArrayList<ProductRegisterDTO> selectProductInfo();
	
	// int insertProductTable(int pdId, String pdName, String pdInfo, int brandId, int pdPrice, int pdDiscountRate, int mainCtgrId, int largeCtgrId, int mediumCtgrId, int smallCtgrId);
	// int insertProductImg(String realpath, String sum2);

	int insertProductTable(ProductRegisterDTO pDto);

	int insertProductImg(FileUploadDTO fdto);

	// int insertProductImg(String fileName, String fileSystemName);

	int insertProductTableNonSmallCtgr(ProductRegisterDTO pDto);
	
	
}
