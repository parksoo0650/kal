package com.kal.web.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kal.web.domain.Member;
@Repository
public interface MemberMapper {
	public void addMember(Member member);
	public int findNumberOfMembers();
	public Member findMember(Map<String,Object> paramMap);
	public List<Member> findMembers(Map<String,Object> paramMap); 
	public void updateMember(Member member);
	public void deleteMember(Map<String,Object> paramMap);


}