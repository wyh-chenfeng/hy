package com.chenfeng.hy.domain.common.utils;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.web.multipart.MultipartFile;

import com.chenfeng.hy.domain.common.config.SystemConfig;
import com.chenfeng.hy.domain.enums.ImgTypeEnum;

public class ImgUploadUtil {
	private static Logger log = Logger.getLogger(ImgUploadUtil.class);
	
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
//				URI driURI = new URI(config.getImageServer() + folder);
//				Path uploadDir = Files.createDirectories(Paths.get(driURI));
//				File dir = uploadDir.toFile();
				
				String path = config.getImageServer() + folder;
				String fileName = DigestUtils.md5Hex(file.getBytes()) + suffix;
				File targetFile = new File(path, fileName);  
				if (!targetFile.exists()) {
					targetFile.mkdirs();
				} 
			  
				file.transferTo(targetFile);
				return (folder + "/" + fileName);
			} catch (Exception e) {
				e.printStackTrace();
				log.error(e.getMessage());
			}
		}
		return null;
	}

	/**
	 * 更新图片
	 * 
	 * @author wyh
	 * @param config 配置文件对象
	 * @param lodImage 老图片地址
	 * @param imageFile {@link MultipartFile} 
	 * @param imgType {@link ImgTypeEnum}
	 * @return
	 */
	public static String updateIMGFile(SystemConfig config, String lodImage,
			MultipartFile imageFile, ImgTypeEnum imgType, Long... id) {
		if (config != null && imageFile != null && !imageFile.isEmpty() && imgType != null) {
			// 删除老图片
			deleteIMGFile(config, lodImage, imgType, id);
			// 保存新图片
			return saveIMGFile(config, imageFile, imgType, id);
		}
		return null;
	}
	
	/**
	 * 删除图片
	 * 
	 * @author wyh
	 * @param config 系统配置
	 * @param lodImage 老图片地址
	 * @param imgType {@link ImgTypeEnum}
	 * @param id
	 */
	public static void deleteIMGFile(SystemConfig config, String lodImage, ImgTypeEnum imgType, Long... id) {
		if (config != null && !StringUtils.isBlank(lodImage) && imgType != null) {
			String suffix = "." + lodImage.split("\\.")[1];
			String fileFormat = suffix.toUpperCase();
			// 校验图片格式是否正确
			if (".JPG.JPEG.TIFF.RAW.BMP.GIF.PNG".indexOf(fileFormat) < 0) {
				return ;
			}
			try {
				// 删除老图片
				File lodFile = new File(config.getImageServer() +"/"+ lodImage);
				if (lodFile.exists()) {
					lodFile.delete();
				}
			} catch (Exception e) {
				log.debug(e.getMessage());
				e.printStackTrace();
				throw new IllegalArgumentException();
			}
		}
	}
}
