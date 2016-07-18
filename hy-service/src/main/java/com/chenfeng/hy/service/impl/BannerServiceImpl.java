package com.chenfeng.hy.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.chenfeng.hy.domain.common.config.SystemConfig;
import com.chenfeng.hy.domain.common.utils.ImgUploadUtil;
import com.chenfeng.hy.domain.enums.ImgTypeEnum;
import com.chenfeng.hy.domain.model.Banner;
import com.chenfeng.hy.domain.repository.BannerMapper;
import com.chenfeng.hy.service.BannerService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

@Service
@Transactional(readOnly = true)
public class BannerServiceImpl extends
		CrudServiceImpl<Banner, Long, BannerMapper> implements BannerService {

	@Resource
	private SystemConfig systemConfig;
	
	@Resource
	@Override
	public void setRepository(BannerMapper bannerMapper) {
		super.setRepository(bannerMapper);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public void add(Banner banner, MultipartFile imageFile) {
		String imagePath = ImgUploadUtil.saveIMGFile(systemConfig, imageFile, ImgTypeEnum.BANNER);
		banner.setImage(imagePath);
		create(banner);
	}

	@Override
	public Page<Banner> query(Integer curPage, Integer pageSize) {
		PageHelper.startPage(curPage, pageSize, true);
		return repository.query();
	}

	@Override
	@Transactional(rollbackFor=Exception.class)
	public void update(Banner banner, MultipartFile imageFile) {
		
		String imagePath = ImgUploadUtil.updateIMGFile(systemConfig, banner.getImage(), imageFile, ImgTypeEnum.BANNER);
		banner.setImage(imagePath);
		update(banner);
	}
	
	@Override
	@Transactional(rollbackFor=Exception.class)
	public void delete(Long id) {
		Banner banner = findOne(id);
		if (banner != null) {
			ImgUploadUtil.deleteIMGFile(systemConfig, banner.getImage(), ImgTypeEnum.BANNER);
			super.delete(id);
		}
	}
}
