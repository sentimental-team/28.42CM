package com.util;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

public class FileUploadUtil {
	public static String saveFile(HttpServletRequest request, Part part, String uploadDir) throws IOException, ServletException {
        String fileName = getFileName(part);
        String filePath = uploadDir + File.separator + fileName;
        File file = new File(filePath);
        Files.copy(part.getInputStream(), file.toPath());
        return filePath;
    }

    private static String getFileName(final Part part) {
        final String partHeader = part.getHeader("content-disposition");
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
}
