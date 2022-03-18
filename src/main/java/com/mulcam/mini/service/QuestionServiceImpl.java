package com.mulcam.mini.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mulcam.mini.dao.MemberDAO;
import com.mulcam.mini.dao.QuestionDAO;
import com.mulcam.mini.dto.Member;
import com.mulcam.mini.dto.Question;

@Service
public class QuestionServiceImpl implements QuestionService {
	@Autowired
	QuestionDAO questionDAO;
	
	@Autowired
	MemberDAO memberDAO;

	@Override
	public void insertQuestion(Question que) throws Exception {
		if(que.getId()==null) {
		} else {
			if(que.getName()==null) {
				System.out.println(que.getId());
				que.setName(memberDAO.queryMember(que.getId()).getName());
			}
			if(que.getEmail()==null){
				que.setEmail(memberDAO.queryMember(que.getId()).getEmail());
			}
			if(que.getPhone()==null) {
				que.setPhone(memberDAO.queryMember(que.getId()).getPhone());
			}
		}
		Integer temp=questionDAO.selectQnaCount();
		if(temp==null) {
			que.setNo("1");
			que.setQmodal(que.getQmodal()+1);
			que.setAmodal(que.getAmodal()+1);
		} else {
			que.setNo(String.valueOf(temp+1));
			que.setQmodal(que.getQmodal()+temp);
			que.setAmodal(que.getAmodal()+temp);
		}
		questionDAO.insertQuestion(que);
	};

	@Override
	public List<Question> allQuestion() throws Exception {
		return questionDAO.allQuestion();
	}

	@Override
	public void updateQuestion(Question que) throws Exception {
		questionDAO.updateQuestion(que);
	}

	@Override
	public List<Question> allQuestionByUser(String id) throws Exception {
		return questionDAO.allQuestionByUser(id);
	}

}
