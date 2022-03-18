package com.mulcam.mini.service;

import java.util.List;

import com.mulcam.mini.dto.Application;

public interface ApplicationService {
	public void insertApplication(Application app) throws Exception;
	public List<Application> allApplication() throws Exception;
	public void docUpdate(String no) throws Exception;
	public void confirmUpdate(String no) throws Exception;
}
