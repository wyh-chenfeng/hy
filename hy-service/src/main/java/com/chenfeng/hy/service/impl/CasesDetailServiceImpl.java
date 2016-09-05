package com.chenfeng.hy.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.chenfeng.hy.domain.common.config.SystemConfig;
import com.chenfeng.hy.domain.common.utils.ImgUploadUtil;
import com.chenfeng.hy.domain.enums.ImgTypeEnum;
import com.chenfeng.hy.domain.model.CasesDetail;
import com.chenfeng.hy.domain.repository.CasesDetailMapper;
import com.chenfeng.hy.service.CasesDetailService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

@Service
@Transactional(readOnly = true)
public class CasesDetailServiceImpl extends
		CrudServiceImpl<CasesDetail, Long, CasesDetailMapper> implements CasesDetailService {

	@Resource
	private SystemConfig systemConfig;
	
	@Resource
	@Override
	public void setRepository(CasesDetailMapper casesDetailMapper) {
		super.setRepository(casesDetailMapper);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public void add(CasesDetail casesDetail, MultipartFile imageFile) {
		String imagePath = ImgUploadUtil.saveIMGFile(systemConfig, imageFile, ImgTypeEnum.NEWS);
		casesDetail.setImage(imagePath);
		casesDetail.setCreateTime(new Date());
		casesDetail.setUpdateTime(new Date());
		create(casesDetail);
	}

	@Override
	public Page<CasesDetail> query(Integer curPage, Integer pageSize) {
		PageHelper.startPage(curPage, pageSize, true);
		return repository.query();
	}

	@Override
	@Transactional(rollbackFor=Exception.class)
	public void update(CasesDetail casesDetail, MultipartFile imageFile) {
		
		String imagePath = ImgUploadUtil.updateIMGFile(systemConfig, casesDetail.getImage(), imageFile, ImgTypeEnum.NEWS);
		casesDetail.setImage(imagePath);
		casesDetail.setCreateTime(new Date());
		update(casesDetail);
	}
	
	@Override
	@Transactional(rollbackFor=Exception.class)
	public void delete(Long id) {
		CasesDetail casesDetail = findOne(id);
		if (casesDetail != null) {
			ImgUploadUtil.deleteIMGFile(systemConfig, casesDetail.getImage(), ImgTypeEnum.NEWS);
			super.delete(id);
		}
	}
}
