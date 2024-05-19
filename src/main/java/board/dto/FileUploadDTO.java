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
	
	public FileUploadDTO(int pdImageId, String pdImageUrl,int pdId, String pdImageUuid) {

		this.pdImageId = pdImageId;
		this.pdImageUrl = pdImageUrl;
		this.pdId = pdId;
		this.pdImageUuid = pdImageUuid;
	}
	public FileUploadDTO(String pdInfoImageUrl, String pdImageInfoUuid) {
		
		this.pdInfoImageUrl = pdInfoImageUrl;
		this.pdImageInfoUuid = pdImageInfoUuid;
	}
	
}
