package qnaboard.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class InqDTO {
	private int inquiryId ;
	private String inquiryTitle ;
	private String inquiryContent ;
	private Date inquiryDate ;
	private int buyInquiry ;
	private int etcInquiry ;
	private int generalInquiryId ;
	private int memberId ; 

}
