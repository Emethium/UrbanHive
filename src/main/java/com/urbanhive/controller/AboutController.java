package com.urbanhive.controller;

import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Transactional
@RequestMapping("/about")
public class AboutController extends AbstractController {

	@RequestMapping(method = RequestMethod.GET, value = "/", name = "about")
	public ModelAndView index() {
		ModelAndView mad = new ModelAndView("home/about");
		return mad;
	}
}
