package com.travelmaker.stravel.common;

import org.springframework.stereotype.Component;

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

	/*public static boolean uploadFile() {
		
	}*/
}
