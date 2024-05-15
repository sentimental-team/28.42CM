package board.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProductBoardRegisterDTO {
	
	
	private int pdId;
	private String pdName;
	private int pdPrice;
	private String pdInfo;
	private int pdSalesQuantity; // 상품 판매량 default 0
	private int pdDiscountRate; // 상품 할인율 default 1
	
	private int brandId;
	private String brandName;
	
	private int mainCtgrId;
	private int largeCtgrId;
	private int mediumCtgrId;
	private int smallCtgrId;
	
	private int pdImageId;
	private String pdImageUrl;
	private String pdInfoImageUrl;
	
	public ProductBoardRegisterDTO(int pdId, String pdName, int pdPrice, String pdInfo, int pdDiscountRate, int brandId,
			String brandName, int mainCtgrId, int largeCtgrId, int mediumCtgrId, int smallCtgrId) {
		
		this.pdId = pdId;
		this.pdName = pdName;
		this.pdPrice = pdPrice;
		this.pdInfo = pdInfo;
		this.pdDiscountRate = pdDiscountRate;
		this.brandId = brandId;
		this.brandName = brandName;
		this.mainCtgrId = mainCtgrId;
		this.largeCtgrId = largeCtgrId;
		this.mediumCtgrId = mediumCtgrId;
		this.smallCtgrId = smallCtgrId;
		
		
	}
	
}
