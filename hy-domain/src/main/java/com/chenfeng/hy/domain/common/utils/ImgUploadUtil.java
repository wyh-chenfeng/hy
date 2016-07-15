package com.chenfeng.hy.domain.common.utils;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.chenfeng.hy.domain.common.config.SystemConfig;
import com.chenfeng.hy.domain.enums.ImgTypeEnum;

public class ImgUploadUtil {

	public static String getFileName(InputStream in, String suffix) {
		if (in != null && !StringUtils.isBlank(suffix)) {
			try {
				return DigestUtils.md5Hex(in) + suffix;
			} catch (IOException e) {
				throw new IllegalArgumentException("InputStream:" + in.toString() + " suffix:" + suffix);
			}
		}
		return null;
	}

	public static String saveIMGFile(SystemConfig config, MultipartFile file,
			ImgTypeEnum imgType, Long... id) {
		if (config != null && file != null && !file.isEmpty() && imgType != null) {
			String suffix = "." + file.getOriginalFilename().split("\\.")[1];
			String fileFormat = suffix.toUpperCase();
			// 校验图片格式是否正确
			if (".JPG.JPEG.TIFF.RAW.BMP.GIF.PNG".indexOf(fileFormat) < 0) {
				return null;
			}
			try {
				String folder = imgType.getLabel();
				if (id != null && id.length > 0) {
					folder += ("/" + id[0]);
				}
				URI driURI = new URI(config.getImageServer() + folder);
				Path uploadDir = Files.createDirectories(Paths.get(driURI));
				File dir = uploadDir.toFile();
				String fileName = DigestUtils.md5Hex(file.getBytes()) + suffix;
				file.transferTo(new File(dir, fileName));
				return (folder + "/" + fileName);
			} catch (Exception e) {
				throw new IllegalArgumentException();
			}
		}
		return null;
	}
}
