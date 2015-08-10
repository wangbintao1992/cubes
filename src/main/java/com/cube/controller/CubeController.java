package com.cube.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cube.dao.MessageMapper;
import com.cube.pojo.Message;

@Controller
public class CubeController {
	
	@Autowired
	@Qualifier("messageDao")
	private MessageMapper messageDao;
	
	@RequestMapping("test")
	public void test(HttpServletRequest request){
		String[] str = request.getParameterValues("t");
		String s = request.getParameter("t");
		Message msg = messageDao.selectMessageById(1);
		System.out.println(msg.getContent() + ":" + msg.getInputTime());
	}

	public void setMessageDao(MessageMapper messageDao) {
		this.messageDao = messageDao;
	}
}
