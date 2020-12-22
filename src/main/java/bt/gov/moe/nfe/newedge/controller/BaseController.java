package bt.gov.moe.nfe.newedge.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import bt.gov.moe.nfe.newedge.dto.UserDto;
import bt.gov.moe.nfe.newedge.services.userservice.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

@Controller
public class BaseController {
	 @Autowired
	 UserService services;
	 
	@GetMapping("/")
	public ModelAndView loginPage(){
		return new ModelAndView("public/index");
	}
	
	@GetMapping("/dashboard")
	public ModelAndView userlogin(HttpServletRequest request,Model model){
		HttpSession session = request.getSession();
		UserDto dto=services.getUserDetails("1");
		session.setAttribute("userdetail", dto);
		model.addAttribute("current_page", "nfe/common/dashboard_data");  
		return new ModelAndView("nfe/common/dashboard");
	}
}
