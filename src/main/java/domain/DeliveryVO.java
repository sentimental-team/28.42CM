package domain;

import java.util.Date;

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
public class DeliveryVO {
	private String brand_name;
	private String pd_name;
	private int pd_price;
	private String pd_option_name;
	private String delivery_state;
	private int delivery_pay;
	private Date delivery_date;
}
