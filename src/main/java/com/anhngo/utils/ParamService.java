package com.anhngo.utils;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;

@Service
public class ParamService {
	@Autowired
	HttpServletRequest req;
	@Autowired
	ServletContext app;

	public String getString(String name, String defaultValue) {
		if (req.getParameter(name) != null) {
			return req.getParameter(name);
		} else {
			return defaultValue;
		}
	}

	public int getInt(String name, int defaultValue) {
		if (req.getParameter(name) != null) {
			return Integer.parseInt(req.getParameter(name));
		} else {
			return defaultValue;
		}
	}

	public double getDouble(String name, double defaultValue) {
		if (req.getParameter(name) != null) {
			return Double.parseDouble(req.getParameter(name));
		} else {
			return defaultValue;
		}
	}

	public boolean getBoolean(String name, boolean defaultValue) {
		if (req.getParameter(name) != null) {
			return Boolean.parseBoolean(req.getParameter(name));
		} else {
			return defaultValue;
		}

	}

	public Date getDate(String name, Date pattern) throws RuntimeException {
		// có try catch để bắt lỗi hoặc không cũng được
		SimpleDateFormat formatter = new SimpleDateFormat(pattern.toString());
		try {
			if (req.getParameter(name) != null) {
				Date date = formatter.parse(name);
				return date;
			} else {
				return null;
			}
		} catch (Exception e) {
			throw new RuntimeException("Lỗi sai định dạng");
		}
	}

	public File save(MultipartFile file, String path) throws RuntimeException {
		File dir = new File(app.getRealPath(path));
		if (!dir.exists()) {
			dir.mkdirs();
		}
		try {
			File saveFile = new File(dir, file.getOriginalFilename());
			file.transferTo(saveFile);
			return saveFile;
		} catch (Exception e) {
			throw new RuntimeException("Lỗi lưu file");
		}
	}
}
