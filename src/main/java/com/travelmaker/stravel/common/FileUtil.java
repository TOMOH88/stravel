package com.travelmaker.stravel.common;

import java.io.File;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileUtil {
	
	
	public static String getExtension(String filename) {
		String extension = "";
		if(filename != null) {
			int lm_iIndex = filename.lastIndexOf('.');

			if(lm_iIndex > -1) {
				extension = filename.substring(lm_iIndex + 1);
			}
		}
		return extension;
	}

	public static void upLoadFile(MultipartFile upfile, String originalFileName, String savePath, String renameFileName) {
		try {
			upfile.transferTo(new File(savePath+"\\"+upfile.getOriginalFilename()));
			File originFile = new File(savePath + "\\" + originalFileName);
			File renameFile = new File(savePath + "\\" + renameFileName);
			originFile.renameTo(renameFile);			
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	
}

