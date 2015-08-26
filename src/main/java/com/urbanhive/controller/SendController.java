package com.urbanhive.controller;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.urbanhive.dao.MessageDAO;
import com.urbanhive.model.MessageForm;
import com.urbanhive.validator.MessageValidator;

@Controller
@Transactional
@RequestMapping("/message")
public class SendController extends AbstractController {
	
	@Autowired
	private MessageDAO mailMan;
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.setValidator(new MessageValidator());
	}
	
	//Won't be available later, just for testing
	@RequestMapping("/shhitsasecret")
	public ModelAndView list() {
		ModelAndView mad = new ModelAndView("/list");
		mad.addObject("mailman",mailMan.list());
		return mad;
	}
	
	@RequestMapping(value = "/form", name = "add")
	public ModelAndView form(MessageForm message) {
		ModelAndView mad = new ModelAndView("/form");
		return mad;
	}
	
	@RequestMapping(method = RequestMethod.POST, name = "createMessage", value = "send")
	public ModelAndView send(@ModelAttribute("message") @Valid MessageForm message, BindingResult binding,
			RedirectAttributes redirectAttributes){
		if(binding.hasErrors()) {
			return form(message);
		}
		mailMan.save(message);
		redirectAttributes.addFlashAttribute("sucess", "Message sent!");
		return new ModelAndView("redirect:show");
	}
	
	@RequestMapping(method = RequestMethod.GET, name = "receive", value = "show")
	public ModelAndView show() {
		long index = mailMan.getLastIndex();
		ModelAndView mad = new ModelAndView("/show");
		mad.addObject("hiveForm", mailMan.findById(index));
		return mad;
	}
	
	
}
