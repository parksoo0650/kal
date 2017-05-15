package com.kal.web.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kal.web.domain.Member;
@Component
public interface MemberService {
	public void addMember(Member member);
	public int findNumberOfMembers();
	public Member findMember(Map<String,Object> paramMap);
	public List<Member> findMembers(Map<String,Object> paramMap); 
	public void updateMember(Member member);
	public void deleteMember(Map<String,Object> paramMap);
}