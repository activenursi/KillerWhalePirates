package com.mc.enterprise.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;

import com.mc.enterprise.dto.JobPostingDto;
import com.mc.enterprise.service.JobPostingService;
import com.mc.util.Paging;

@Controller
public class JobPostingController {
	
	private static final Logger log = LoggerFactory.getLogger(JobPostingController.class);
	@Autowired
	public JobPostingService jobPostingService;
	
	@RequestMapping(value="/jobPosting/em_listOne.do" , method = RequestMethod.GET)
	public String JobPostingListOne(int no, Model model) {
		log.debug("Welcome jobPostingController jobPostinglistOne - {}!" + no);
		
		Map<String, Object> map =  jobPostingService.jobPostingSelectOne(no);
		
		JobPostingDto jobPostingDto = (JobPostingDto)map.get("jobPosting");
		//파일첨부??
		List<Map<String,Object>> fileList
			= (List<Map<String, Object>>) map.get("fileList");
		
		model.addAttribute("jobPostingDto", jobPostingDto);
		//파일첨부??
		model.addAttribute("fileList", fileList);
		
		return "jobPosting/jobPostingListOneView";
	}
		
		
		
	@RequestMapping(value = "/jobPosting/em_list.do", 
			method = {RequestMethod.GET,RequestMethod.POST})
	public String jobPostingList(@RequestParam(defaultValue = "1") int curPage, Model model) {
		log.info("Welcome jobPostingController list!: {}", curPage);
		
		int totalCount = jobPostingService.jobPostingSelectTotalCount();
		
		Paging jobPostingPaging = new Paging(totalCount, curPage);
		
		
		int start = jobPostingPaging.getPageBegin();
		int end = jobPostingPaging.getPageEnd();
		
		
		List<JobPostingDto> jobPostingList = jobPostingService.jobPostingSelectList(start, end);
		
		HashMap<String, Object> pagingMap = new HashMap<>();
		pagingMap.put("totalCount", totalCount);
		pagingMap.put("memberPaging", jobPostingPaging);
		
		model.addAttribute("jobPostingList", jobPostingList);
		model.addAttribute("pagingMap", pagingMap);
		
		return "enterprise/JobPostingList";
	}
	
	@RequestMapping(value="/jobPosting/em_add.do", method = RequestMethod.GET)
	public String jobPostingAdd(Model model) {
		log.debug("Welcome jobPostingController jobPostingAdd!");
		
		return "enterprise/JobPostingForm";
	}
	
	@RequestMapping(value="/jobPosting/em_addCtr.do", method = RequestMethod.POST)
	public String jobPostingAddCtr(JobPostingDto jobPostingDto, Model model, MultipartHttpServletRequest  req) {
		log.debug("Welcome jobPostingController jobPostingAddCtr!" + jobPostingDto);
		
		try {
			jobPostingService.jobPostingInsertOne(jobPostingDto, req);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("오류 처리할거 있음 한다");
			e.printStackTrace();
		}
			
		return "redirect:/jobPosting/em_list.do";
	}
	
	@RequestMapping(value="/jobPosting/em_update.do", method = RequestMethod.GET)
	public String jobPostingUpdate(int no, Model model) {
		log.info("Welcome jobPostingController jobPostingUpdate!"+ no);
		
		Map<String,Object> map = jobPostingService.jobPostingSelectOne(no);
	
		JobPostingDto jobPostingDto = (JobPostingDto)map.get("jobPostingDto");
		
		List<Map<String, Object>> fileList 
			= (List<Map<String,Object>>) map.get("fileList");
		
		
		model.addAttribute("jobPostingDto",jobPostingDto);
		model.addAttribute("fileList",fileList);
		
		return "jobPosting/jobPostingUpdateForm";
	}
	
	@RequestMapping(value="/jobPosting/em_updateCtr.do", method = RequestMethod.POST)
	public String jobPostingUpdateCtr(JobPostingDto jobPostingDto
			, @RequestParam(value = "fileIdx", defaultValue ="-1") int fileIdx
			, MultipartHttpServletRequest mulRequest
			,Model model) {
		log.info("Welcome jobPostingController jobPostingUpdateCtr! jobPostingDto: {}\n fileIdx:{}"
				, jobPostingDto ,fileIdx);
		
		int resultNum = 0;
		
		try {
			resultNum = jobPostingService.jobPostingUpdateOne(jobPostingDto, mulRequest, fileIdx);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return "common/successPage";
	}
	
	
	@RequestMapping(value="/jobPosting/em_delete.do", method= RequestMethod.GET)
	public String jobPostingDelete(int no, Model model) {
		log.info("Welcome jobPostingController jobPostingDelete!"+ no);
		
		jobPostingService.jobPostingDeleteOne(no);
		
		return "redirect:/jobPosting/em_list.do";
	}
}
