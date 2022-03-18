package com.mulcam.mini.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.mulcam.mini.dto.Question;

@Mapper
@Repository("questionDAO")
public interface QuestionDAO {
	public void insertQuestion(Question que) throws Exception;
	public List<Question> allQuestion() throws Exception;
	public Integer selectQnaCount() throws Exception;
	public void updateQuestion(Question que) throws Exception;
	public List<Question> allQuestionByUser(String id) throws Exception;
}
