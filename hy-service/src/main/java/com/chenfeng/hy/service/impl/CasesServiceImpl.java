package com.chenfeng.hy.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.chenfeng.hy.domain.common.config.SystemConfig;
import com.chenfeng.hy.domain.common.utils.ImgUploadUtil;
import com.chenfeng.hy.domain.enums.ImgTypeEnum;
import com.chenfeng.hy.domain.model.Cases;
import com.chenfeng.hy.domain.repository.CasesMapper;
import com.chenfeng.hy.service.CasesService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

@Service
@Transactional(readOnly = true)
public class CasesServiceImpl extends
		CrudServiceImpl<Cases, Long, CasesMapper> implements CasesService {

	@Resource
	private SystemConfig systemConfig;
	
	@Resource
	@Override
	public void setRepository(CasesMapper casesMapper) {
		super.setRepository(casesMapper);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public void add(Cases cases, MultipartFile imageFile) {
		String imagePath = ImgUploadUtil.saveIMGFile(systemConfig, imageFile, ImgTypeEnum.CASES);
		cases.setImage(imagePath);
		cases.setContent(cases.getContent().replaceAll("\"", "\'"));
		cases.setCreateTime(new Date());
		cases.setUpdateTime(new Date());
		create(cases);
	}

	@Override
	public Page<Cases> query(Integer curpage, Integer pageSize) {
		PageHelper.startPage(curpage, pageSize, true);
		return repository.query();
	}

	@Override
	@Transactional(rollbackFor=Exception.class)
	public void update(Cases cases, MultipartFile imageFile) {
		
		String imagePath = ImgUploadUtil.updateIMGFile(systemConfig, cases.getImage(), imageFile, ImgTypeEnum.CASES);
		cases.setImage(imagePath);
		cases.setContent(cases.getContent().replaceAll("\"", "\'"));
		cases.setCreateTime(new Date());
		update(cases);
	}
	
	@Override
	@Transactional(rollbackFor=Exception.class)
	public void delete(Long id) {
		Cases cases = findOne(id);
		if (cases != null) {
			ImgUploadUtil.deleteIMGFile(systemConfig, cases.getImage(), ImgTypeEnum.CASES);
			super.delete(id);
		}
	}
	
	@Override
	public List<Cases> findAll() {
		return repository.findAll();
	}

	@Override
	public String fileUpload(MultipartFile file) {
		return ImgUploadUtil.saveIMGFile(systemConfig, file, ImgTypeEnum.CASES);
	}
}
