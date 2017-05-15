package com.kal.web.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kal.web.domain.Member;
import com.kal.web.mapper.MemberMapper;
import com.kal.web.service.MemberService;
@Service
public class MemberServiceImpl implements MemberService{
	@Autowired MemberMapper mapper;
	@Override
	public void addMember(Member member) {
		mapper.addMember(member);
		
	}

	@Override
	public int findNumberOfMembers() {
		return mapper.findNumberOfMembers();
	}

	@Override
	public Member findMember(Map<String, Object> paramMap) {
		return mapper.findMember(paramMap);
	}

	@Override
	public List<Member> findMembers(Map<String, Object> paramMap) {
		return mapper.findMembers(paramMap);
	}

	@Override
	public void updateMember(Member member) {
		mapper.updateMember(member);
		
	}

	@Override
	public void deleteMember(Map<String, Object> paramMap) {
		mapper.deleteMember(paramMap);
	}

}
