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
public class Large_CtgrVO {

	private int large_ctgr_id;
	private String main_ctgr_name;
	private int main_ctgr_id;
	
	private int cnt;
	
	public Large_CtgrVO(int large_ctgr_id, String main_ctgr_name, int main_ctgr_id) {
		this.large_ctgr_id = large_ctgr_id;
		this.main_ctgr_name = main_ctgr_name;
		this.main_ctgr_id = main_ctgr_id;
	}
}
