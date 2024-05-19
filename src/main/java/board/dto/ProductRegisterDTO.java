package board.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProductRegisterDTO {
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
	
	public ProductRegisterDTO(int pdId, String pdName, String pdInfo, int brandId, int pdPrice, int pdDiscountRate, 
			int mainCtgrId, int largeCtgrId, int mediumCtgrId, int smallCtgrId) {
		
		this.pdId = pdId;
		this.pdName = pdName;
		this.pdInfo = pdInfo;
		this.brandId = brandId;
		this.pdPrice = pdPrice;
		this.pdDiscountRate = pdDiscountRate;
		this.mainCtgrId = mainCtgrId;
		this.largeCtgrId = largeCtgrId;
		this.mediumCtgrId = mediumCtgrId;
		this.smallCtgrId = smallCtgrId;
		
	}
	public ProductRegisterDTO(int pdId, String pdName, String pdInfo, int brandId, int pdPrice, int pdDiscountRate, 
			int mainCtgrId, int largeCtgrId, int mediumCtgrId) {
		
		this.pdId = pdId;
		this.pdName = pdName;
		this.pdInfo = pdInfo;
		this.brandId = brandId;
		this.pdPrice = pdPrice;
		this.pdDiscountRate = pdDiscountRate;
		this.mainCtgrId = mainCtgrId;
		this.largeCtgrId = largeCtgrId;
		this.mediumCtgrId = mediumCtgrId;
		
		
	}

}
