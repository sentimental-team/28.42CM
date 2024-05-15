package kids.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class KidsAllDTO {
	private int pd_id;
	private String pd_name;
	private int pd_price;
	private String pd_info;
	private int pd_sales_quantity;
	private int pd_discount_rate;
	private int brand_id;
	private int main_ctgr_id;
	private int large_ctgr_id;
	private int medium_ctgr_id;
	private int small_ctgr_id;
}
