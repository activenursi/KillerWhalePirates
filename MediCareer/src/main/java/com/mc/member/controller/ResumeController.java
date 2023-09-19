package com.mc.member.controller;

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

import com.mc.member.dto.ResumeDto;
import com.mc.member.service.ResumeService;
import com.mc.util.Paging;

@Controller
public class ResumeController {

   private static final Logger log = LoggerFactory.getLogger(ResumeController.class);
   @Autowired
   public ResumeService resumeService;
   
   @RequestMapping(value="/resume/listOne.do" , method = RequestMethod.GET)
   public String resumeListOne(int no, Model model) {
      log.debug("Welcome resumeController resumelistOne - {}!" + no);
      
      Map<String, Object> map =  resumeService.resumeSelectOne(no);
      
      ResumeDto resumeDto = (ResumeDto)map.get("resumeDto");
      //파일첨부??
      List<Map<String,Object>> fileList
         = (List<Map<String, Object>>) map.get("fileList");
      
      model.addAttribute("resumeDto", resumeDto);
      //파일첨부??
      model.addAttribute("fileList", fileList);
      
      return "resume/resumeListOneView";
   }
      
      
      
   @RequestMapping(value = "/resume/list.do", 
         method = {RequestMethod.GET,RequestMethod.POST})
   public String resumeList(@RequestParam(defaultValue = "1") int curPage, Model model) {
      log.info("Welcome resumeController list!: {}", curPage);
      
      int totalCount = resumeService.resumeSelectTotalCount();
      
      Paging resumePaging = new Paging(totalCount, curPage);
      
      
      int start = resumePaging.getPageBegin();
      int end = resumePaging.getPageEnd();
      
      
      List<ResumeDto> resumeList = resumeService.resumeSelectList(start, end);
      
      HashMap<String, Object> pagingMap = new HashMap<>();
      pagingMap.put("totalCount", totalCount);
      pagingMap.put("resumePaging", resumePaging);
      
      model.addAttribute("resumeList", resumeList);
      model.addAttribute("pagingMap", pagingMap);
      
      return "resume/resumeListView";
   }

   @RequestMapping(value="/resume/add.do", method = RequestMethod.GET)
   public String resumeAdd(Model model) {
      log.debug("Welcome resumeController resumeAdd!");
      
      return "common_resume/cm_JoinForm";
   }
   
   @RequestMapping(value="/resume/addCtr.do", method = RequestMethod.POST)
   public String resumeAdd(ResumeDto resumeDto, Model model) {
      log.debug("Welcome resumeController resumeAdd!" + resumeDto);
      
      try {
         resumeService.resumeInsertOne(resumeDto);
      } catch (Exception e) {
         // TODO Auto-generated catch block
         System.out.println("오류 처리할거 있음 한다");
         e.printStackTrace();
      }
         
      return "redirect:/index.jsp";
   }
   
   @RequestMapping(value="/resume/update.do", method = RequestMethod.GET)
   public String resumeUpdate(int no, Model model) {
      log.info("Welcome resumeController resumeUpdate!"+ no);
      
      Map<String,Object> map = resumeService.resumeSelectOne(no);
   
      ResumeDto resumeDto = (ResumeDto)map.get("resumeDto");
      
      List<Map<String, Object>> fileList 
         = (List<Map<String,Object>>) map.get("fileList");
      
      model.addAttribute("resumeDto",resumeDto);
      model.addAttribute("fileList",fileList);
      
      return "resume/resumeUpdateForm";
   }
   
   @RequestMapping(value="/resume/updateCtr.do", method = RequestMethod.POST)
   public String resumeUpdateCtr(ResumeDto resumeDto
         , @RequestParam(value = "fileIdx", defaultValue ="-1") int fileIdx
         , MultipartHttpServletRequest mulRequest
         ,Model model) {
      log.info("Welcome resumeController resumeUpdateCtr! resumeDto: {}\n fileIdx:{}"
            , resumeDto ,fileIdx);
      
      int resultNum = 0;
      
      try {
         resultNum = resumeService.resumeUpdateOne(resumeDto, mulRequest, fileIdx);
      } catch (Exception e) {
         e.printStackTrace();
      }
      
      return "common/successPage";
   }
   
   
   @RequestMapping(value="/resume/delete.do", method= RequestMethod.GET)
   public String resumeDelete(int no, Model model) {
      log.info("Welcome resumeController resumeDelete!"+ no);
      
      resumeService.resumeDeleteOne(no);
      
      return "redirect:/resume/list.do";
   }
   
}