package product_list.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PdDTO {
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
	private int medium_ctgr_id;
	private int pdGrade;
	private String Medium_ctgr_name;
	private int deliveryPay;
	private String pdOptionName;
	private String reviewContent;
	private String pdContent;
	private int pd_id;
	
	
	
	//dto에 정의 되어있는 내용중에 dao에서 호출 안하면 오류 뜨나??..

	
}