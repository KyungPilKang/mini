package com.mulcam.mini.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.mulcam.mini.dto.Member;

@Mapper
@Repository("memberDAO")
public interface MemberDAO {
	public Member queryMember(String id) throws Exception;
	public void insertMember(Member mem) throws Exception;
	public Member queryMemberByEmail(String email) throws Exception;
}
