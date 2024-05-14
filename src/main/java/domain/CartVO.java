package domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class CartVO {
	private String brandName;
	private String pdName;
	private int pdPrice;
	private String pdOptionName;
	private int deliveryPay;
	private int cnt;
	
}
