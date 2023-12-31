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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mc.mail.MailSendService;
import com.mc.member.dto.MemberDto;
import com.mc.member.service.MemberService;
import com.mc.util.Paging;

@Controller
public class MemberController {
	
	private static final Logger log = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	public MemberService memberService;
	@Autowired
	private MailSendService mailService;

	@RequestMapping(value="/auth/login.do", method = RequestMethod.GET)
	public String login(HttpSession session, Model model) {
		log.info("Welcome MemberController login!");
		
		return "./auth/cm_LoginForm";
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
	public String loginOut(HttpSession session, Model model) {
		log.info("Welcome MemberController loginout!");
		
		session.invalidate();
		
		return "redirect:/home.do";
	}
	
	//====================== 일반회원 비밀번호 찾기 ========================
	
	@RequestMapping(value="/member/resetPassword.do", method = RequestMethod.GET)
	public String resetPassword(Model model) {
		log.info("Welcome MemberController findPassword!");
		
		return "./common_member/cm_ResetPassword";
	}
	
	@RequestMapping(value="/member/resetPasswordCtr.do", method = RequestMethod.POST)
	public String resetPasswordCtr(MemberDto memberDto, Model model) throws Exception {
		log.info("Welcome MemberController resetPasswordCtr!" + memberDto);
		
		int resultNum = 0;
		
		try {
			resultNum = memberService.resetPassword(memberDto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "./auth/cm_LoginForm";
	}
	
	//인증번호 전송
	@ResponseBody
	@RequestMapping(value="/member/emailIdentify.do", method = RequestMethod.POST)
	public int memberEmailIdentify(MemberDto memberDto) throws Exception {
		log.info("Welcome MemberController memberNicknameCheck!" + memberDto);
		int result = memberService.memberEmailIdentify(memberDto);
		
		return result;
	}
	
	//====================== 마이페이지 ========================
	
	@RequestMapping(value="/member/myPage.do", method = RequestMethod.GET)
	public String memberListOne(int no, Model model) {
		log.debug("Welcome MemberController memberlistOne - {}!" + no);
		
		Map<String, Object> map = memberService.memberSelectOne(no);
		
		MemberDto memberDto = (MemberDto)map.get("memberDto");
	
		model.addAttribute("memberDto", memberDto);
		
		return "common_member/cm_MyPage";
	}
	
	@RequestMapping(value="/member/AccountSetting.do", method = RequestMethod.GET)
	public String memberSetting(int no, Model model) {
		log.debug("Welcome MemberController memberlistOne - {}!" + no);
		
		Map<String, Object> map = memberService.memberSelectOne(no);
		
		MemberDto memberDto = (MemberDto)map.get("memberDto");
	
		model.addAttribute("memberDto", memberDto);
		
		return "common_member/cm_AccountSetting";
	}
	
	@RequestMapping(value="/member/BoardManagement.do", method = RequestMethod.GET)
	public String memberBoardManagement(int no, Model model) {
		log.debug("Welcome MemberController memberlistOne - {}!" + no);
		
		Map<String, Object> map = memberService.memberSelectOne(no);
		
		MemberDto memberDto = (MemberDto)map.get("memberDto");
	
		model.addAttribute("memberDto", memberDto);
		
		return "common_member/cm_BoardManagement";
	}
	
	@RequestMapping(value="/member/ApplicationStatus.do", method = RequestMethod.GET)
	public String memberApplicationStatus(int no, Model model) {
		log.debug("Welcome MemberController memberlistOne - {}!" + no);
		
		Map<String, Object> map = memberService.memberSelectOne(no);
		
		MemberDto memberDto = (MemberDto)map.get("memberDto");
	
		model.addAttribute("memberDto", memberDto);
		
		return "common_member/cm_ApplicationStatus";
	}
	
	@RequestMapping(value="/member/ResumeManagement.do", method = RequestMethod.GET)
	public String memberResumeManagement(int no, Model model) {
		log.debug("Welcome MemberController memberlistOne - {}!" + no);
		
		Map<String, Object> map = memberService.memberSelectOne(no);
		
		MemberDto memberDto = (MemberDto)map.get("memberDto");
	
		model.addAttribute("memberDto", memberDto);
		
		return "common_member/cm_ResumeManagement";
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
	public String memberAdd(MemberDto memberDto, Model model) throws Exception {
		log.debug("Welcome MemberController memberAdd!" + memberDto);
		
		try {
			memberService.memberInsertOne(memberDto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("오류 처리할거 있음 한다");
			e.printStackTrace();
		}
			
		return "redirect:/home.do";
	}
	
	//닉네임 중복 체크
	@ResponseBody
	@RequestMapping(value="/member/nicknameCheck.do", method = RequestMethod.POST)
	public int memberNicknameCheck(MemberDto memberDto) throws Exception {
		log.info("Welcome MemberController memberNicknameCheck!" + memberDto);
		int result = memberService.memberNicknameCheck(memberDto);
		
		return result;
	}
	
	//이메일 인증
	@GetMapping("/member/emailCheck.do")
	@ResponseBody
	public String mailCheck(String email) {
		System.out.println("이메일 인증 요청이 들어옴!");
		System.out.println("이메일 인증 이메일 : " + email);
		
		return mailService.joinEmail(email);
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
	
	@RequestMapping(value="/member/AccountDeletion.do", method = RequestMethod.GET)
	public String memberDelete(int no, Model model) {
		log.debug("Welcome MemberController memberlistOne - {}!" + no);
		
		Map<String, Object> map = memberService.memberSelectOne(no);
		
		MemberDto memberDto = (MemberDto)map.get("memberDto");
	
		model.addAttribute("memberDto", memberDto);
		
		return "common_member/cm_AccountDeletion";
	}
	
	@RequestMapping(value="/member/deleteCtr.do", method= RequestMethod.GET)
	public String memberDeleteCtr(int no, Model model) {
		log.info("Welcome MemberController memberDelete!"+ no);
		
		memberService.memberDeleteOne(no);
		
		return "redirect:/member/list.do";
	}
	
}
