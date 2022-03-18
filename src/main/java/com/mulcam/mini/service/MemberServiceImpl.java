package com.mulcam.mini.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mulcam.mini.dao.MemberDAO;
import com.mulcam.mini.dto.Member;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDAO memberDAO;

	@Override
	public boolean memOverlap(String id) throws Exception {
		Member mem=memberDAO.queryMember(id);
		if(mem==null) return false;
		return true;
	}
	
	@Override
	public boolean memOverlapByEmail(String email) throws Exception {
		Member mem=memberDAO.queryMemberByEmail(email);
		if(mem==null) return false;
		return true;
	}
	
	@Override
	public void makeMember(Member mem) throws Exception {
		memberDAO.insertMember(mem);
	}

	@Override
	public Member accessMember(String id, String password) throws Exception {
		Member mem=memberDAO.queryMember(id);
		if(mem==null) {
			throw new Exception("존재하지 않는 아이디입니다");
		}
		if(id.equals(mem.getId())&&password.equals(mem.getPassword())) {
			return mem;
		} else if(id.equals(mem.getId())&&!password.equals(mem.getPassword())) {
			throw new Exception("비밀번호가 일치하지 않습니다");
		} else return null;
	}

	@Override
	public Member queryMember(String id) throws Exception {
		return memberDAO.queryMember(id);
	}
}
