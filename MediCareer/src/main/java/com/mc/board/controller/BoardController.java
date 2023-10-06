package com.mc.board.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mc.board.dto.BoardDto;
import com.mc.board.service.BoardService;
import com.mc.member.dto.MemberDto;
import com.mc.util.Paging;

@Controller
public class BoardController {

	private static final Logger log = LoggerFactory.getLogger(BoardController.class);
	@Autowired
	public BoardService boardService;

	@RequestMapping(value = "/board/list.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String boardList(@RequestParam(defaultValue = "1") int curPage, Model model) {
		log.info("Welcome BoardController list!: {}", curPage);

		int totalCount = boardService.boardSelectTotalCount();

		Paging boardPaging = new Paging(totalCount, curPage);

		int start = boardPaging.getPageBegin();
		int end = boardPaging.getPageEnd();

		List<BoardDto> boardList = boardService.boardSelectList(start, end);

		HashMap<String, Object> pagingMap = new HashMap<>();
		pagingMap.put("totalCount", totalCount);
		pagingMap.put("boardPaging", boardPaging);

		model.addAttribute("boardList", boardList);
		model.addAttribute("pagingMap", pagingMap);

		return "board/adm_BoardList";
	}

	@RequestMapping(value = "/board/add.do", method = RequestMethod.GET)
	public String communityBoardAdd(HttpSession session ,Model model) {
		log.debug("Welcome communityBoardController communityAdd!"+ session);
		
		model.addAttribute("boardDto",session);
		return "board/BoardWrite";
	}

	@RequestMapping(value = "/board/addCtr.do", method = RequestMethod.POST)
	public String boardAdd(BoardDto boardDto, MultipartHttpServletRequest mulRequest, Model model) {
		log.debug("Welcome boardController boardAddCtr!" + boardDto);
		System.out.println("이것도작동아하는데무슨");
		try {
			boardService.boardInsertOne(boardDto, mulRequest);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("오류 처리할거 있음 한다");
			e.printStackTrace();
		}

		return "redirect:/board/board.do";
	}

	@RequestMapping(value = "/board/update.do", method = RequestMethod.GET)
	public String boardUpdate(int no, Model model) {
		log.info("Welcome boardController boardUpdate!" + no);

		Map<String, Object> map = boardService.boardSelectOne(no);

		BoardDto boardDto = (BoardDto) map.get("boardDto");

		List<Map<String, Object>> fileList = (List<Map<String, Object>>) map.get("fileList");

		model.addAttribute("boardDto", boardDto);
		model.addAttribute("fileList", fileList);

		return "board/BoardUpdateForm";
	}

	@RequestMapping(value = "/board/updateCtr.do", method = RequestMethod.POST)
	public String boardUpdateCtr(BoardDto boardDto,
			@RequestParam(value = "fileIdx", defaultValue = "-1") int fileIdx, MultipartHttpServletRequest mulRequest,
			Model model) {
		log.info("Welcome boardController boardUpdateCtr! boardDto: {}\n fileIdx:{}", boardDto, fileIdx);

		int resultNum = 0;

		try {
			resultNum = boardService.boardUpdateOne(boardDto, mulRequest, fileIdx);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "common/successPage";
	}

	@RequestMapping(value = "/board/delete.do", method = RequestMethod.GET)
	public String boardDelete(int no, Model model) {
		log.info("Welcome boardController boardDelete!" + no);

		boardService.boardDeleteOne(no);

		return "redirect:/board/list.do";
	}
	
	@RequestMapping(value = "/community/bestlist.do", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public List<BoardDto> communityList(@RequestParam("category") String category, Model model) {
		log.info("Welcome BoardController bestlist!: {}", category);

		
		List<BoardDto> boardList = boardService.communityBestList(category);


		return boardList;
	}
	
	@RequestMapping(value = "/community/newlist.do", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public HashMap<String, Object> communityNewList(@RequestParam(defaultValue = "전체") String category
			, @RequestParam(defaultValue = "1") int curPage, @RequestParam(defaultValue = "-1") int writerNo
			, Model model) {
		log.info("Welcome BoardController newlist! category: {}\n curPage:{}\n"+"writerNo:"+writerNo, category, curPage);
		
		
		int totalCount = boardService.newListTotalCount(category);
		
		Paging boardPaging = new Paging(totalCount, curPage);

		int start = boardPaging.getPageBegin();
		int end = boardPaging.getPageEnd();
		
		List<BoardDto> boardList = boardService.communityNewList(category, start, end, writerNo);
		
		HashMap<String, Object> boardListMap = new HashMap<>();
		boardListMap.put("totalCount", totalCount);
		boardListMap.put("boardPaging", boardPaging);
		boardListMap.put("boardList", boardList);
		boardListMap.put("category", category);
		System.out.println(boardListMap.get("boardPaging").toString());
	
		return boardListMap;
	}
	@RequestMapping(value = "/board/board.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String communityBoard(HttpSession  session, Model model) {
		log.info("Welcome BoardController communitylist!: {}", session);
		
		
		return "./board/BoardList";
	}
	
	@RequestMapping(value="/board/detail.do", method = RequestMethod.GET)
	public String boardListOne(int no, Model model) {
		log.debug("Welcome boardController boardlistOne - {}!" + no);
		
		Map<String, Object> map = boardService.boardSelectOne(no);
		
		BoardDto boardDto = (BoardDto)map.get("boardDto");
	
		model.addAttribute("boardDto", boardDto);
		
		return "./board/BoardDetail";
	}
}
