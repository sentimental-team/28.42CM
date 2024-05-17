package board.persistence.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.JdbcUtil;

import board.dto.FileUploadDTO;
import board.dto.ProductRegisterDTO;
import board.persistence.dao.ProductRegisterDAO;

public class ProductRegisterDAOImpl implements ProductRegisterDAO{
	private Connection conn = null;
	private PreparedStatement productPstmt = null;
	private PreparedStatement imagePstmt = null;
	private ResultSet rs = null;
	
		// 1. 생성자를 통한 DI
		public ProductRegisterDAOImpl(Connection conn) {
			this.conn = conn;
		}

	@Override
	public int productRegister(ProductRegisterDTO pDto, FileUploadDTO fDto) throws SQLException {
		
		
		int insertCount = 0;
		
		String insertProductSql = "INSERT INTO product (pd_id, pd_name, pd_price, pd_info, pd_discount_rate, brand_id, main_ctgr, large_ctgr, medium_ctgr, small_ctgr) " 
							+ "VALUES (seq_pd_id.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		String insertImageSql = "INSERT INTO product_image (pd_image_id, pd_image_url, pd_info_image_url, pd_id, pd_image_uuid, pd_image_info_uuid) "
							+ "VALUES(seq_pd_image_id.NEXTVAL, ?, ?, seq_pd_id.CURRVAL, ?, ?) ";
		
		conn.setAutoCommit(false);
		try {      
			
            
            productPstmt = conn.prepareStatement(insertProductSql);
            productPstmt.setString(1, pDto.getPdName());
            productPstmt.setInt(2, pDto.getPdPrice());
            productPstmt.setString(3, pDto.getPdInfo());
            productPstmt.setInt(4, pDto.getPdDiscountRate()); 
            productPstmt.setInt(5, pDto.getBrandId()); 
            productPstmt.setInt(6, pDto.getMainCtgrId());
            productPstmt.setInt(7, pDto.getLargeCtgrId());
            productPstmt.setInt(8, pDto.getMediumCtgrId());
            productPstmt.setInt(9, pDto.getSmallCtgrId());
            
            productPstmt.executeUpdate();
            
            
            imagePstmt = conn.prepareStatement(insertImageSql);
            imagePstmt.setString(1, fDto.getPdImageUrl());
            imagePstmt.setString(2, fDto.getPdInfoImageUrl());
            imagePstmt.setString(3, fDto.getPdImageUuid());
            imagePstmt.setString(4, fDto.getPdImageInfoUuid());
            
            imagePstmt.executeUpdate();

            conn.commit();
            
		} catch (Exception e) { 
			if(conn != null) {
				try {
					conn.rollback();
				} catch(SQLException e1) {
					e1.printStackTrace();
				}
			}
		}
		finally {
			if(productPstmt != null)
				JdbcUtil.close(productPstmt);
			if(imagePstmt != null)
				JdbcUtil.close(imagePstmt);
			if(conn != null)
				JdbcUtil.close(conn);
		}
		
		return 1;

	}
	
	@Override
	public ArrayList<ProductRegisterDTO> selectProductInfo(){
		
		String sql = "SELECT pd_id, pd_name, pd_price, pd_info, pd_sales_quantity, pd_discount_rate FROM product ";
		
		ArrayList<ProductRegisterDTO> listDto = new ArrayList<ProductRegisterDTO>();
		
		int pdId;
		String pdName;
		int pdPrice;
		String pdInfo;
		int pdSalesQuantity;
		int pdDiscountRate;
		
		try {
			productPstmt = conn.prepareStatement(sql);
			rs = productPstmt.executeQuery();
			if(rs.next()) {
				do {
					pdId = rs.getInt("pd_id");
					pdName = rs.getString("pd_name");
					pdPrice = rs.getInt("pd_price");
					pdInfo = rs.getString("pd_info");
					pdDiscountRate = rs.getInt("pd_discount_rate");
					
					ProductRegisterDTO dto = ProductRegisterDTO.builder()
																.pdId(pdId)
																.pdName(pdName)
																.pdPrice(pdPrice)
																.pdInfo(pdInfo)
																.pdDiscountRate(pdDiscountRate)
																.build();
					listDto.add(dto);
				} while(rs.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				productPstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return null;
	}

	@Override
	public ArrayList<ProductRegisterDTO> selectMainCategoryInfo() {
		
		String sql = "SELECT main_ctgr_id FROM main_ctgr ";
		
		ArrayList<ProductRegisterDTO> listDto = new ArrayList<ProductRegisterDTO>();
		
		int mainCtgrId;
		
		try {
			productPstmt = conn.prepareStatement(sql);
			 
			rs = productPstmt.executeQuery();
			if(rs.next()) {
				do {
					mainCtgrId = rs.getInt("main_ctgr_id");
					
										 
					
					ProductRegisterDTO dto = ProductRegisterDTO.builder()
																.mainCtgrId(mainCtgrId)
																.build();
					listDto.add(dto);
				} while(rs.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				productPstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return listDto;
	}
	@Override
	public ArrayList<ProductRegisterDTO> selectLargeCategoryInfo() {
		
		String sql = "SELECT large_ctgr_id FROM large_ctgr ";
		
		ArrayList<ProductRegisterDTO> listDto = new ArrayList<ProductRegisterDTO>();
		
		int largeCtgrId;
		
		try {
			productPstmt = conn.prepareStatement(sql);
			
			rs = productPstmt.executeQuery();
			if(rs.next()) {
				do {
					largeCtgrId = rs.getInt("large_ctgr_id");
					
					
					
					ProductRegisterDTO dto = ProductRegisterDTO.builder()
							.largeCtgrId(largeCtgrId)
							.build();
					listDto.add(dto);
				} while(rs.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				productPstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return listDto;
	}
	@Override
	public ArrayList<ProductRegisterDTO> selectMediumCategoryInfo() {
		
		String sql = "SELECT medium_ctgr_id FROM medium_ctgr ";
		
		ArrayList<ProductRegisterDTO> listDto = new ArrayList<ProductRegisterDTO>();
		
		int mediumCtgrId;
		
		try {
			productPstmt = conn.prepareStatement(sql);
			
			rs = productPstmt.executeQuery();
			if(rs.next()) {
				do {
					mediumCtgrId = rs.getInt("medium_ctgr_id");
					
					
					
					ProductRegisterDTO dto = ProductRegisterDTO.builder()
							.mainCtgrId(mediumCtgrId)
							.build();
					listDto.add(dto);
				} while(rs.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				productPstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return listDto;
	}
	@Override
	public ArrayList<ProductRegisterDTO> selectSmallCategoryInfo() {
		
		String sql = "SELECT small_ctgr_id FROM small_ctgr ";
		
		ArrayList<ProductRegisterDTO> listDto = new ArrayList<ProductRegisterDTO>();
		
		int smallCtgrId;
		
		try {
			productPstmt = conn.prepareStatement(sql);
			
			rs = productPstmt.executeQuery();
			if(rs.next()) {
				do {
					smallCtgrId = rs.getInt("small_ctgr_id");
					
					
					
					ProductRegisterDTO dto = ProductRegisterDTO.builder()
							.mainCtgrId(smallCtgrId)
							.build();
					listDto.add(dto);
				} while(rs.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				productPstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return listDto;
	}

	@Override
	public ArrayList<ProductRegisterDTO> selectBrandInfo() {
		String sql = "select brand_id, brand_name FROM brand ORDER BY brand_name ";
		ArrayList<ProductRegisterDTO> listDto = new ArrayList<ProductRegisterDTO>();
		int brandId;
		String brandName;
		
		try {
			productPstmt = conn.prepareStatement(sql);
			rs = productPstmt.executeQuery();
			if(rs.next()) {
				do {
					brandId = rs.getInt("brand_id");
					brandName = rs.getString("brand_name");
					
					ProductRegisterDTO dto = ProductRegisterDTO.builder()
																.brandId(brandId)
																.brandName(brandName)
																.build();
					listDto.add(dto);
				} while(rs.next());
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				productPstmt.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return listDto;
	}

	@Override
	public int insertProductTable(ProductRegisterDTO pDto) {
		
		String sql = "INSERT INTO product(pd_id, pd_name, pd_info, brand_id, pd_price, pd_discount_rate, main_ctgr_id, large_ctgr_id, medium_ctgr_id, small_ctgr_id) "
					+ "VALUES (seq_pd_id.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?) ";
		
		int result = 0;
		
		try {
			productPstmt = conn.prepareStatement(sql);
			productPstmt.setString(1, pDto.getPdName());
			productPstmt.setString(2, pDto.getPdInfo());
			productPstmt.setInt(3, pDto.getBrandId());
			productPstmt.setInt(4, pDto.getPdPrice());
			productPstmt.setInt(5, pDto.getPdDiscountRate());
			productPstmt.setInt(6, pDto.getMainCtgrId());
			productPstmt.setInt(7, pDto.getLargeCtgrId());
			productPstmt.setInt(8, pDto.getMediumCtgrId());
			productPstmt.setInt(9, pDto.getSmallCtgrId());
			result = productPstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				productPstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	
//	@Override
//	public int insertProductImg(String fileName, String fileUuid) {
//		String sql = "INSERT INTO product_image(pd_image_url, pd_image_uuid, pd_info_image_url, pd_image_info_uuid) values(seq_pd_image_id.nextval, ?, ?, seq_pd_id.CURRVAL, ?, ?) ";
//		int result = 0;
//		try {
//			imagePstmt = conn.prepareStatement(sql);
//			imagePstmt.setString(1, fileName);
//			imagePstmt.setString(2, fileUuid);
//			imagePstmt.setString(3, fileName);
//			imagePstmt.setString(4, fileUuid);
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			try {
//				imagePstmt.close();
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//		}
//		return result;
//	}
	
	

	@Override
	public int insertProductTableNonSmallCtgr(ProductRegisterDTO pDto) {
		String sql = "INSERT INTO product(pd_id, pd_name, pd_info, brand_id, pd_price, pd_discount_rate, main_ctgr_id, large_ctgr_id, medium_ctgr_id) "
				+ "VALUES (seq_pd_id.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?) ";
	
		int result = 0;
		
		try {
			productPstmt = conn.prepareStatement(sql);
			productPstmt.setString(1, pDto.getPdName());
			productPstmt.setString(2, pDto.getPdInfo());
			productPstmt.setInt(3, pDto.getBrandId());
			productPstmt.setInt(4, pDto.getPdPrice());
			productPstmt.setInt(5, pDto.getPdDiscountRate());
			productPstmt.setInt(6, pDto.getMainCtgrId());
			productPstmt.setInt(7, pDto.getLargeCtgrId());
			productPstmt.setInt(8, pDto.getMediumCtgrId());
			result = productPstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				productPstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}

	@Override
	public int insertProductImg(FileUploadDTO fdto) {
		String sql = " INSERT INTO product_image(pd_image_id, pd_image_url, pd_info_image_url, pd_id, pd_image_uuid,  pd_image_info_uuid) "
					+ " values(seq_pd_image_id.nextval, ?, ?, seq_pd_id.CURRVAL, ?, ?) ";
		int result = 0;
		try {
			imagePstmt = conn.prepareStatement(sql);
			imagePstmt.setString(1, fdto.getPdImageUrl());
			imagePstmt.setString(2, fdto.getPdInfoImageUrl());
			imagePstmt.setString(3, fdto.getPdImageUuid());
			imagePstmt.setString(4, fdto.getPdImageInfoUuid());
			result = imagePstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				imagePstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

//	@Override
//	public int insertProductImg(String fileName, String fileSystemName) {
//		String sql = "INSERT INTO product_image(pd_image_url, pd_image_uuid, pd_info_image_url, pd_image_info_uuid) values(seq_pd_image_id.nextval, ?, ?, seq_pd_id.CURRVAL, ?, ?) ";
//		int result = 0;
//		try {
//			imagePstmt = conn.prepareStatement(sql);
//			imagePstmt.setString(1, fileName);
//			imagePstmt.setString(2, fileSystemName);
//			imagePstmt.setString(3, fileName);
//			imagePstmt.setString(4, fileSystemName);
//			result = imagePstmt.executeUpdate();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			try {
//				imagePstmt.close();
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//		}
//		return result;
//	}

	
}

















