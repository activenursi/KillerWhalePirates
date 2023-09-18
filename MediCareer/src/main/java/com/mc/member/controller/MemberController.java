package com.mc.member.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mc.member.dto.MemberDto;
import com.mc.member.service.MemberService;
import com.mc.util.Paging;

@Controller
public class MemberController {
	
	private static final Logger log = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	public MemberService memberService;
	
	@RequestMapping(value="/auth/login.do", method = RequestMethod.GET)
	public String login(HttpSession session, Model model) {
		log.info("Welcome MemberController login!");
		
		
		return "./auth/MemberLoginForm";
	}
	
	
	@RequestMapping(value="/auth/loginCtr.do", method = RequestMethod.POST)
	public String loginCtr(String email, String password, 
			HttpSession session, Model model) {
		log.info("Welcome MemberController loginCtr!" + email +", "+ password);
		
		MemberDto memberDto = memberService.memberExist(email, password);
		
		String viewUrl="";
		
		if(memberDto != null) {
			//회원존재하면 세션에담는다
			session.setAttribute("member", memberDto);
			viewUrl = "redirect:../home.do";
		}else {
			viewUrl =  "auth/LoginFail";
		}
		
		return viewUrl;
	}
	// 로그아웃
	@RequestMapping(value="/auth/logout.do", method = RequestMethod.GET)
	public String loginout(HttpSession session, Model model) {
		log.info("Welcome MemberController loginout!");
		
		session.invalidate();
		
		return "redirect:/auth/login.do";
	}
	
	@RequestMapping(value="/member/listOne.do" , method = RequestMethod.GET)
	public String memberListOne(int no, Model model) {
		log.debug("Welcome MemberController memberlistOne - {}!" + no);
		
		Map<String, Object> map =  memberService.memberSelectOne(no);
		
		MemberDto memberDto = (MemberDto)map.get("memberDto");
		//파일첨부??
		List<Map<String,Object>> fileList
			= (List<Map<String, Object>>) map.get("fileList");
		
		model.addAttribute("memberDto", memberDto);
		//파일첨부??
		model.addAttribute("fileList", fileList);
		
		return "member/MemberListOneView";
	}
		
		
		
	@RequestMapping(value = "/member/list.do", 
			method = {RequestMethod.GET,RequestMethod.POST})
	public String memberList(@RequestParam(defaultValue = "1") int curPage, Model model) {
		log.info("Welcome MemberController list!: {}", curPage);
		
		int totalCount = memberService.memberSelectTotalCount();
		
		Paging memberPaging = new Paging(totalCount, curPage);
		
		
		int start = memberPaging.getPageBegin();
		int end = memberPaging.getPageEnd();
		
		
		List<MemberDto> memberList = memberService.memberSelectList(start, end);
		
		HashMap<String, Object> pagingMap = new HashMap<>();
		pagingMap.put("totalCount", totalCount);
		pagingMap.put("memberPaging", memberPaging);
		
		model.addAttribute("memberList", memberList);
		model.addAttribute("pagingMap", pagingMap);
		
		return "member/MemberListView";
	}

	@RequestMapping(value="/member/add.do", method = RequestMethod.GET)
	public String memberAdd(Model model) {
		log.debug("Welcome MemberController memberAdd!");
		
		return "common_member/cm_JoinForm";
	}
	
	@RequestMapping(value="/member/addCtr.do", method = RequestMethod.POST)
	public String memberAdd(MemberDto memberDto, Model model) {
		log.debug("Welcome MemberController memberAdd!" + memberDto);
		
		try {
			memberService.memberInsertOne(memberDto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("오류 처리할거 있음 한다");
			e.printStackTrace();
		}
			
		return "redirect:/index.jsp";
	}
	
	@RequestMapping(value="/member/update.do", method = RequestMethod.GET)
	public String memberUpdate(int no, Model model) {
		log.info("Welcome MemberController memberUpdate!"+ no);
		
		Map<String,Object> map = memberService.memberSelectOne(no);
	
		MemberDto memberDto = (MemberDto)map.get("memberDto");
		
		List<Map<String, Object>> fileList 
			= (List<Map<String,Object>>) map.get("fileList");
		
		model.addAttribute("memberDto",memberDto);
		model.addAttribute("fileList",fileList);
		
		return "member/MemberUpdateForm";
	}
	
	@RequestMapping(value="/member/updateCtr.do", method = RequestMethod.POST)
	public String memberUpdateCtr(MemberDto memberDto
			, @RequestParam(value = "fileIdx", defaultValue ="-1") int fileIdx
			, MultipartHttpServletRequest mulRequest
			,Model model) {
		log.info("Welcome MemberController memberUpdateCtr! memberDto: {}\n fileIdx:{}"
				, memberDto ,fileIdx);
		
		int resultNum = 0;
		
		try {
			resultNum = memberService.memberUpdateOne(memberDto, mulRequest, fileIdx);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "common/successPage";
	}
	
	
	@RequestMapping(value="/member/delete.do", method= RequestMethod.GET)
	public String memberDelete(int no, Model model) {
		log.info("Welcome MemberController memberDelete!"+ no);
		
		memberService.memberDeleteOne(no);
		
		return "redirect:/member/list.do";
	}
	
}
