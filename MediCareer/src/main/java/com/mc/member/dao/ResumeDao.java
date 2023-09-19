package com.mc.member.dao;

public class ResumeDao {
import java.util.List;

import com.mc.member.dto.ResumeDto;

public interface ResumeDao {

	public ResumeDto resumeSelectOne(int no);

	public int resumeSelectTotalCount();

	public List<ResumeDto> resumeSelectList(int start, int end);

	public int resumeInsertOne(ResumeDto resumeDto);

	public int resumeUpdateOne(ResumeDto resumeDto);

	public int fileDelete(int no);

	public int resumeDeleteOne(int no);

}
