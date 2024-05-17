package cart.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor

public class CartDTO {

	
	
	private String pdName;
	private int pdPrice;
	private String brandName;	
	private String pdOptionName;
    private int deliveryPay;
	//private int totalPayPrice;
	
	
	
	
	
}
