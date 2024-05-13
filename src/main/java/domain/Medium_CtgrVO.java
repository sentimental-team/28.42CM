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
public class Medium_CtgrVO {

	private int medium_ctgr_id;
	private String medium_ctgr_name;
	private int large_ctgr_id;
	
	private int cnt;
	
	public Medium_CtgrVO(int medium_ctgr_id, String medium_ctgr_name, int large_ctgr_id) {
		this.medium_ctgr_id = medium_ctgr_id;
		this.medium_ctgr_name = medium_ctgr_name;
		this.large_ctgr_id = large_ctgr_id;
	}
}
