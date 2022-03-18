package com.mulcam.mini.service;

import java.util.List;

import com.mulcam.mini.dto.Question;

public interface QuestionService {
	public void insertQuestion(Question que) throws Exception;
	public List<Question> allQuestion() throws Exception;
	public void updateQuestion(Question que) throws Exception;
	public List<Question> allQuestionByUser(String id) throws Exception;
}
