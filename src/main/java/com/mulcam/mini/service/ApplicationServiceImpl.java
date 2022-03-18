package com.mulcam.mini.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mulcam.mini.dao.ApplicationDAO;
import com.mulcam.mini.dao.MemberDAO;
import com.mulcam.mini.dto.Application;
import com.mulcam.mini.dto.Member;

@Service
public class ApplicationServiceImpl implements ApplicationService {
	@Autowired
	MemberDAO memberDAO;
	
	@Autowired
	ApplicationDAO applicationDAO;

	@Override
	public void insertApplication(Application app) throws Exception {
		if(app.getId()!=null) {
			Member mem=memberDAO.queryMemberByEmail(app.getEmail());
			if(mem!=null){
				app.setId(mem.getId());
			} else {
				app.setId(null);
			}
		}
		Integer temp=applicationDAO.selectApplyCount();
		if(temp==null) {
			app.setNo("1");
			app.setModal(app.getModal()+1);
		} else {
			app.setNo(String.valueOf(temp+1));
			app.setModal(app.getModal()+temp);
		}
		applicationDAO.insertApplication(app);
	}

	@Override
	public List<Application> allApplication() throws Exception {
		return applicationDAO.allApplication();
	}

	@Override
	public void docUpdate(String no) throws Exception {
		applicationDAO.docUpdate(no);
	}

	@Override
	public void confirmUpdate(String no) throws Exception {
		applicationDAO.confirmUpdate(no);
	}
}
