package com.chenfeng.hy.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.chenfeng.hy.domain.common.config.SystemConfig;
import com.chenfeng.hy.domain.common.utils.ImgUploadUtil;
import com.chenfeng.hy.domain.enums.ImgTypeEnum;
import com.chenfeng.hy.domain.model.News;
import com.chenfeng.hy.domain.repository.NewsMapper;
import com.chenfeng.hy.service.NewsService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

@Service
@Transactional(readOnly = true)
public class NewsServiceImpl extends
		CrudServiceImpl<News, Long, NewsMapper> implements NewsService {

	@Resource
	private SystemConfig systemConfig;
	
	@Resource
	@Override
	public void setRepository(NewsMapper newsMapper) {
		super.setRepository(newsMapper);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public void add(News news, MultipartFile imageFile) {
		String imagePath = ImgUploadUtil.saveIMGFile(systemConfig, imageFile, ImgTypeEnum.NEWS);
		news.setImage(imagePath);
		news.setCreateTime(new Date());
		news.setUpdateTime(new Date());
		create(news);
	}

	@Override
	public Page<News> query(Integer curPage, Integer pageSize) {
		PageHelper.startPage(curPage, pageSize, true);
		return repository.query();
	}

	@Override
	@Transactional(rollbackFor=Exception.class)
	public void update(News news, MultipartFile imageFile) {
		
		String imagePath = ImgUploadUtil.updateIMGFile(systemConfig, news.getImage(), imageFile, ImgTypeEnum.NEWS);
		news.setImage(imagePath);
		news.setCreateTime(new Date());
		update(news);
	}
	
	@Override
	@Transactional(rollbackFor=Exception.class)
	public void delete(Long id) {
		News news = findOne(id);
		if (news != null) {
			ImgUploadUtil.deleteIMGFile(systemConfig, news.getImage(), ImgTypeEnum.NEWS);
			super.delete(id);
		}
	}
}
