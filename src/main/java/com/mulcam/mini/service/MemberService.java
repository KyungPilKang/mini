package com.mulcam.mini.service;


import com.mulcam.mini.dto.Member;

public interface MemberService {
	boolean memOverlap(String id) throws Exception;
	boolean memOverlapByEmail(String email) throws Exception;
	void makeMember(Member mem) throws Exception;
	Member accessMember(String id, String password) throws Exception;
	Member queryMember(String id) throws Exception;
}
