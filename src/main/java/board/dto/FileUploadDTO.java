package board.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class FileUploadDTO {
	private int pdImageId;
	private String pdImageUrl;
	private String pdInfoImageUrl;
	private int pdId;
	private String pdImageUuid;
	private String pdImageInfoUuid;
	private int cnt;
	
	public FileUploadDTO(int pdImageId, String pdImageUrl, String pdInfoImageUrl, int pdId, String pdImageUuid,  String pdImageInfoUuid) {

		this.pdImageId = pdImageId;
		this.pdImageUrl = pdImageUrl;
		this.pdInfoImageUrl = pdInfoImageUrl;
		this.pdId = pdId;
		this.pdImageUuid = pdImageUuid;
		this.pdImageInfoUuid = pdImageInfoUuid;
	}
	
}
