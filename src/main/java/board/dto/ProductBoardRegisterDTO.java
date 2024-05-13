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
	
	private int pdImageId;
	private String pdImageUrl;
	private String pdInfoImageUrl;
	
	
}
