package com.mc.enterprise.controller;


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

import com.mc.enterprise.dto.EnterpriseDto;
import com.mc.enterprise.service.EnterpriseService;
import com.mc.member.dto.MemberDto;
import com.mc.util.Paging;

@Controller
public class EnterpriseController {
	
	private static final Logger log = LoggerFactory.getLogger(EnterpriseController.class);
	@Autowired
	public EnterpriseService enterpriseService;
	
	
	@RequestMapping(value="/auth/em_login.do", method = RequestMethod.GET)
	public String login(HttpSession session, Model model) {
		log.info("Welcome EnterPriseController login!");
		
		return "./auth/EnterpriseLoginForm";
	}
	
	@RequestMapping(value="/auth/em_loginCtr.do", method = RequestMethod.POST)
	public String loginCtr(String email, String password, 
			HttpSession session, Model model) {
		log.info("Welcome EnterpriseController loginCtr!" + email +", "+ password);
		
		EnterpriseDto enterpriseDto = enterpriseService.enterpriseExist(email, password);
		
		String viewUrl="";
		
		if(enterpriseDto != null) {
			//회원존재하면 세션에담는다
			session.setAttribute("enterprise", enterpriseDto);
			viewUrl = "redirect:/enterprise/list.do";
		}else {
			viewUrl =  "auth/LoginFail";
		}
		
		return viewUrl;
	}
	
	
	@RequestMapping(value="/enterprise/em_listOne.do" , method = RequestMethod.GET)
	public String memberListOne(int no, Model model) {
		log.debug("Welcome EnterpriseController enterpriselistOne - {}!" + no);
		
		Map<String, Object> map =  enterpriseService.enterpriseSelectOne(no);
		
		EnterpriseDto enterpriseDto = (EnterpriseDto)map.get("enterprise");
		//파일첨부??
		List<Map<String,Object>> fileList
			= (List<Map<String, Object>>) map.get("fileList");
		
		model.addAttribute("enterpriseDto", enterpriseDto);
		//파일첨부??
		model.addAttribute("fileList", fileList);
		
		return "enterprise/EnterpriseListOneView";
	}
		
		
		
	@RequestMapping(value = "/enterprise/em_list.do", 
			method = {RequestMethod.GET,RequestMethod.POST})
	public String enterpriseList(@RequestParam(defaultValue = "1") int curPage, Model model) {
		log.info("Welcome EnterpriseController list!: {}", curPage);
		
		int totalCount = enterpriseService.enterpriseSelectTotalCount();
		
		Paging enterprisePaging = new Paging(totalCount, curPage);
		
		
		int start = enterprisePaging.getPageBegin();
		int end = enterprisePaging.getPageEnd();
		
		
		List<EnterpriseDto> enterpriseList = enterpriseService.enterpriseSelectList(start, end);
		
		HashMap<String, Object> pagingMap = new HashMap<>();
		pagingMap.put("totalCount", totalCount);
		pagingMap.put("memberPaging", enterprisePaging);
		
		model.addAttribute("memberList", enterpriseList);
		model.addAttribute("pagingMap", pagingMap);
		
		return "enterprise/EnterpriseListView";
	}
	
	@RequestMapping(value="/enterprise/em_add.do", method = RequestMethod.GET)
	public String enterpriseAdd(Model model) {
		log.debug("Welcome EnterpriseController enterpriseAdd!");
		
		return "enterprise/EnterpriseForm";
	}
	
	@RequestMapping(value="/enterprise/em_addCtr.do", method = RequestMethod.POST)
	public String memberAdd(EnterpriseDto enterpriseDto, MultipartHttpServletRequest mulRequest
			, Model model) {
		log.debug("Welcome EnterpriseController enterpriseAdd!" + enterpriseDto);
		
		try {
			enterpriseService.enterpriseInsertOne(enterpriseDto, mulRequest);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("오류 처리할거 있음 한다");
			e.printStackTrace();
		}
			
		return "redirect:/enterprise/em_list.do";
	}
	
	@RequestMapping(value="/enterprise/em_update.do", method = RequestMethod.GET)
	public String memberUpdate(int no, Model model) {
		log.info("Welcome EnterpriseController enterpriseUpdate!"+ no);
		
		Map<String,Object> map = enterpriseService.enterpriseSelectOne(no);
	
		EnterpriseDto enterpriseDto = (EnterpriseDto)map.get("enterpriseDto");
		
		List<Map<String, Object>> fileList 
			= (List<Map<String,Object>>) map.get("fileList");
		
		
		model.addAttribute("enterpriseDto",enterpriseDto);
		model.addAttribute("fileList",fileList);
		
		return "enterprise/EnterpriseUpdateForm";
	}
	
	@RequestMapping(value="/enterprise/em_updateCtr.do", method = RequestMethod.POST)
	public String memberUpdateCtr(EnterpriseDto enterpriseDto
			, @RequestParam(value = "fileIdx", defaultValue ="-1") int fileIdx
			, MultipartHttpServletRequest mulRequest
			,Model model) {
		log.info("Welcome EnterpriseController enterpriseUpdateCtr! enterpriseDto: {}\n fileIdx:{}"
				, enterpriseDto ,fileIdx);
		
		int resultNum = 0;
		
		try {
			resultNum = enterpriseService.enterpriseUpdateOne(enterpriseDto, mulRequest, fileIdx);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return "common/successPage";
	}
	
	
	@RequestMapping(value="/enterprise/em_delete.do", method= RequestMethod.GET)
	public String memberDelete(int no, Model model) {
		log.info("Welcome EnterpriseController enterpriseDelete!"+ no);
		
		enterpriseService.enterpriseDeleteOne(no);
		
		return "redirect:/enterprise/em_list.do";
	}
}
