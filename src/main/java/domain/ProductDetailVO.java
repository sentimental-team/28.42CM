package domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ProductDetailVO {
	private String brand_name ;
	private String pd_image_url ;
	private String pd_name ;
	private int pd_discount_rate ;
	private int pd_price ;
	private String pd_info ;
	private String pd_info_image_url ;
	
	private int cnt ;

	public ProductDetailVO(String brand_name, String pd_image_url, String pd_name, int pd_discount_rate, int pd_price,
			String pd_info, String pd_info_image_url) {
		this.brand_name = brand_name;
		this.pd_image_url = pd_image_url;
		this.pd_name = pd_name;
		this.pd_discount_rate = pd_discount_rate;
		this.pd_price = pd_price;
		this.pd_info = pd_info;
		this.pd_info_image_url = pd_info_image_url;
	}
	
}
