package com.cube.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CubeController {
	@RequestMapping("test")
	public void test(HttpServletRequest request){
		String[] str = request.getParameterValues("t");
		String s = request.getParameter("t");
	}
}
