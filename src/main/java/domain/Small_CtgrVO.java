package domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Small_CtgrVO {
	
	private int small_ctgr_id;
	private String small_ctgr_name;
	private int medium_ctgr_id;
	
	int cnt;
	
	public Small_CtgrVO(int small_ctgr_id, String small_ctgr_name, int medium_ctgr_id) {
		this.small_ctgr_id = small_ctgr_id;
		this.small_ctgr_name = small_ctgr_name;
		this.medium_ctgr_id = medium_ctgr_id;
	}
	
}
