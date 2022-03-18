package com.mulcam.mini.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.mulcam.mini.dto.Application;

@Mapper
@Repository("applicationDAO")
public interface ApplicationDAO {
	public void insertApplication(Application app) throws Exception;
	public List<Application> allApplication() throws Exception;
	public Integer selectApplyCount() throws Exception;
	public void docUpdate(String no) throws Exception;
	public void confirmUpdate(String no) throws Exception;
	public Application selectApply(String no) throws Exception;
}
