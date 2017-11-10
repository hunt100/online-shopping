package net.kzn.onlineshopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	@RequestMapping(value = {"/", "/home", "/index"})
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("greeting","Welcome to Spring Web MVC");
		return mv;
	}
	
//	@RequestMapping(value="/test")
//	//public ModelAndView test(@RequestParam("greeting")String greeting) {
//	public ModelAndView test(@RequestParam(value="greeting",required=false)String greeting) {
//		if (greeting == null) {
//			greeting = "Hello Hello my little friend";
//		}
//		ModelAndView mv = new ModelAndView("page");
//		mv.addObject("greeting",greeting);
//		return mv;
//	}
	
	@RequestMapping(value="/test/{greeting}") // greeting is dynamic
	//public ModelAndView test(@RequestParam("greeting")String greeting) {
	public ModelAndView test(@PathVariable(value="greeting")String greeting) {
		if (greeting == null) {
			greeting = "Hello Hello my little friend";
		}
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("greeting",greeting);
		return mv;
	}
	
	
}
