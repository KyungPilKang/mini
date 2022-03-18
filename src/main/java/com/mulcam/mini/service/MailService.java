package com.mulcam.mini.service;

import com.mulcam.mini.dto.Application;
import com.mulcam.mini.dto.Mail;
import com.mulcam.mini.dto.Member;
import com.mulcam.mini.dto.Question;

public interface MailService {
	void joinMailSend(Mail mail, Member mem);
	void applyMailSend(Mail mail, Application app);
	void qnaMailSend(Mail mail, Question que);
	void applyConfirmSendMail(Mail mail, String no);
}
