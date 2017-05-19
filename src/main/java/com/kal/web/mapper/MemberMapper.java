package com.kal.web.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kal.web.domain.Member;
@Repository
public interface MemberMapper {
	public void addMember(Member member) throws Exception;
	public int findNumberOfMembers() throws Exception;
	public Member findMember(Map<String,Object> paramMap) throws Exception;
	public List<Member> findMembers(Map<String,Object> paramMap)throws Exception; 
	public void updateMember(Member member)throws Exception;
	public void deleteMember(Map<String,Object> paramMap)throws Exception;


}