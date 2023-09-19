package com.mc.board.controller;

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

import com.mc.board.dto.Cs_BoardDto;
import com.mc.board.service.Cs_BoardService;
import com.mc.util.Paging;

@Controller
public class Cs_BoardController {

	private static final Logger log = LoggerFactory.getLogger(Cs_BoardController.class);
	@Autowired
	public Cs_BoardService cs_boardService;

	@RequestMapping(value = "/cs_board/list.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String cs_boardList(@RequestParam(defaultValue = "1") int curPage, Model model) {
		log.info("Welcome BoardController list!: {}", curPage);

		int totalCount = cs_boardService.cs_boardSelectTotalCount();

		Paging cs_boardPaging = new Paging(totalCount, curPage);

		int start = cs_boardPaging.getPageBegin();
		int end = cs_boardPaging.getPageEnd();

		List<Cs_BoardDto> cs_boardList = cs_boardService.cs_boardSelectList(start, end);

		HashMap<String, Object> pagingMap = new HashMap<>();
		pagingMap.put("totalCount", totalCount);
		pagingMap.put("cs_boardPaging", cs_boardPaging);

		model.addAttribute("cs_boardList", cs_boardList);
		model.addAttribute("pagingMap", pagingMap);

		return "cs_board/adm_cs_boardList";
	}

	@RequestMapping(value = "/cs_board/add.do", method = RequestMethod.GET)
	public String cs_boardAdd(Model model) {
		log.debug("Welcome cs_boardController cs_boardAdd!");

		return "cs_board/cs_boardForm";
	}

	@RequestMapping(value = "/cs_board/addCtr.do", method = RequestMethod.POST)
	public String cs_boardAdd(Cs_BoardDto cs_boardDto, MultipartHttpServletRequest mulRequest, Model model) {
		log.debug("Welcome cs_boardController cs_boardAdd!" + cs_boardDto);

		try {
			cs_boardService.cs_boardInsertOne(cs_boardDto, mulRequest);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("오류 처리할거 있음 한다");
			e.printStackTrace();
		}

		return "redirect:/cs_board/list.do";
	}

	@RequestMapping(value = "/cs_board/update.do", method = RequestMethod.GET)
	public String cs_boardUpdate(int no, Model model) {
		log.info("Welcome cs_boardController cs_boardUpdate!" + no);

		Map<String, Object> map = cs_boardService.cs_boardSelectOne(no);

		Cs_BoardDto cs_boardDto = (Cs_BoardDto) map.get("cs_boardDto");

		List<Map<String, Object>> fileList = (List<Map<String, Object>>) map.get("fileList");

		model.addAttribute("cs_boardDto", cs_boardDto);
		model.addAttribute("fileList", fileList);

		return "cs_board/cs_boardUpdateForm";
	}

	@RequestMapping(value = "/cs_board/updateCtr.do", method = RequestMethod.POST)
	public String cs_boardUpdateCtr(Cs_BoardDto cs_boardDto,
			@RequestParam(value = "fileIdx", defaultValue = "-1") int fileIdx, MultipartHttpServletRequest mulRequest,
			Model model) {
		log.info("Welcome cs_boardController cs_boardUpdateCtr! cs_boardDto: {}\n fileIdx:{}", cs_boardDto, fileIdx);

		int resultNum = 0;

		try {
			resultNum = cs_boardService.cs_boardUpdateOne(cs_boardDto, mulRequest, fileIdx);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "common/successPage";
	}

	@RequestMapping(value = "/cs_board/delete.do", method = RequestMethod.GET)
	public String cs_boardDelete(int no, Model model) {
		log.info("Welcome cs_boardController cs_boardDelete!" + no);

		cs_boardService.cs_boardDeleteOne(no);

		return "redirect:/cs_board/list.do";
	}

}
