package com.cube.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CubeController {
	
	@RequestMapping("test")
	public void test(){
		System.out.println("success");
	}
}
