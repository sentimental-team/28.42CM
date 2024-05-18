package mypage.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class MypageDTO {
	private String brandName;
	private String pdName;
	private int pdPrice;
	private String pdOptionName;
	private int deliveryPay;
	private int deliveryState;
	private Date deliveryDate;
	private int pdId;
	private String pdImageURL;
	private int memberId;
}
