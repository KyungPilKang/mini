package com.mulcam.mini.service;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.mulcam.mini.dao.ApplicationDAO;
import com.mulcam.mini.dao.MemberDAO;
import com.mulcam.mini.dao.QuestionDAO;
import com.mulcam.mini.dto.Application;
import com.mulcam.mini.dto.Mail;
import com.mulcam.mini.dto.Member;
import com.mulcam.mini.dto.Question;
import com.mulcam.mini.handler.MailHandler;

@Service
public class MailServiceImpl implements MailService {
	
	@Autowired
	JavaMailSender javaMailSender;
	
	@Autowired
	MemberDAO memberDAO;
	
	@Autowired
	QuestionDAO questionDAO;
	
	@Autowired
	ApplicationDAO applicationDAO;
	
	@Override
	public void joinMailSend(Mail mail, Member mem) {
		mail.setTitle(mem.getId()+"님, STUDIO LIME의 회원이 되신것을 환영합니다.");
		mail.setAddress(mem.getEmail());
		try {
			MailHandler mailHandler=new MailHandler(javaMailSender);
			mailHandler.setTo(mail.getAddress());
			mailHandler.setFrom("studio-lime@naver.com");
			mailHandler.setSubject(mail.getTitle());
			String htmlContent = "<img src='cid:welcome-img'>";
            mailHandler.setText(htmlContent, true);
			mailHandler.setInline("welcome-img", "static/mail/welcome.jpg");
			mailHandler.setAttach("STUDIO_LIME_서비스안내.pdf", "static/mail/STUDIO_LIME_서비스안내.pdf");
			mailHandler.send();
		} catch(Exception e) {
			e.printStackTrace();
		}
		/*
		 * SimpleMailMessage message=new SimpleMailMessage();
		 * message.setTo(mail.getAddress()); message.setSubject(mail.getTitle());
		 * message.setText(mem.getName()+mail.getMessage());
		 * message.setFrom("studio-lime@naver.com"); javaMailSender.send(message);
		 */
	}

	@Override
	public void applyMailSend(Mail mail, Application app) {
		if(app.getId()==null) {
			mail.setTitle(app.getName()+"님, STUDIO LIME 프리랜서 지원이 접수되었습니다.");
		} else {
			mail.setTitle(app.getId()+"님, STUDIO LIME의 프리랜서 지원이 접수되었습니다.");
		}
		mail.setAddress(app.getEmail());
		try {
			MailHandler mailHandler=new MailHandler(javaMailSender);
			mailHandler.setTo(mail.getAddress());
			mailHandler.setFrom("studio-lime@naver.com");
			mailHandler.setSubject(mail.getTitle());
			String htmlContent = "<h1>STUDIO LIME의 프리랜서 지원이 접수되었습니다.</h1>"
					+ "<br>"
					+ "<h3>첨부파일을 확인하시고, 양식에 맞게 구비서류를 회신해주시기 바랍니다.</h3>";
            mailHandler.setText(htmlContent, true);
			mailHandler.setAttach("STUDIO_LIME_이력서.doc", "static/mail/STUDIO_LIME_이력서.doc");
			mailHandler.send();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void qnaMailSend(Mail mail, Question que) {
		if(que.getId()==null||que.getId().equals("")) {
			mail.setTitle(que.getName()+"님, STUDIO LIME에 문의하신 내용에 대해 답변이 완료되었습니다.");
			mail.setAddress(que.getEmail());
			try {
				MailHandler mailHandler=new MailHandler(javaMailSender);
				mailHandler.setTo(mail.getAddress());
				mailHandler.setFrom("studio-lime@naver.com");
				mailHandler.setSubject(mail.getTitle());
				String htmlContent = "<h1>STUDIO LIME에 문의하신 내용에 대해 답변이 완료되었습니다.</h1>"
						+ "<br>"
						+ "<h3>질문 제목: "+que.getTitle()+"</h3>"
						+ "<br>"
						+ "<h3>질문 내용: "+que.getQtext()+"</h3>"
						+ "<br>"
					    + "<h3>답변 내용: "+que.getAtext()+"</h3>"
						+ "<br>"
						+ "<h3>추가적인 문의사항은 사이트에서 문의주시면 감사하겠습니다.</h3>"
						+ "<br>"
					    + "<a href='http://localhost:8090/'><h3>STUDIO LIME으로 이동</h3></a>";
				mailHandler.setText(htmlContent, true);
				mailHandler.send();
			} catch(Exception e) {
				e.printStackTrace();
			}
		} else {
			mail.setTitle(que.getId()+"님, STUDIO LIME에 문의하신 내용에 대해 답변이 완료되었습니다.");
			mail.setAddress(que.getEmail());
			try {
				MailHandler mailHandler=new MailHandler(javaMailSender);
				mailHandler.setTo(mail.getAddress());
				mailHandler.setFrom("studio-lime@naver.com");
				mailHandler.setSubject(mail.getTitle());
				String htmlContent = "<h1>STUDIO LIME에 문의하신 내용에 대해 답변이 완료되었습니다.</h1>"
						+ "<br>"
						+ "<h3>STUDIO LIME에 로그인 후 내 페이지에서 확인하시기 바랍니다.</h3>"
						+ "<br>"
						+ "<a href='http://localhost:8090/'><h3>STUDIO LIME으로 이동</h3></a>";
				mailHandler.setText(htmlContent, true);
				mailHandler.send();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public void applyConfirmSendMail(Mail mail, String no) {
		Application app=new Application();
		try {
			app=applicationDAO.selectApply(no);
			if(app.getId()==null) {
				mail.setTitle(app.getName()+"님, STUDIO LIME 프리랜서 지원에 합격하였습니다.");
			} else {
				mail.setTitle(app.getId()+"님, STUDIO LIME 프리랜서 지원에 합격하였습니다.");
			}
			mail.setAddress(app.getEmail());
			MailHandler mailHandler=new MailHandler(javaMailSender);
			mailHandler.setTo(mail.getAddress());
			mailHandler.setFrom("studio-lime@naver.com");
			mailHandler.setSubject(mail.getTitle());
			String htmlContent = "<h1>STUDIO LIME 프리랜서 지원에 합격하였습니다.</h1>"
					+ "<br>"
					+ "<h3>첨부파일을 확인하시고, 양식에 맞게 구비서류를 회신해주시기 바랍니다.</h3>"
					+ "<img src='cid:congratulation-img'>";
            mailHandler.setText(htmlContent, true);
            mailHandler.setInline("congratulation-img", "static/mail/congratulation.jpg");
			mailHandler.setAttach("STUDIO_LIME_프리랜서등록서류.pdf", "static/mail/STUDIO_LIME_프리랜서등록서류.pdf");
			mailHandler.send();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
