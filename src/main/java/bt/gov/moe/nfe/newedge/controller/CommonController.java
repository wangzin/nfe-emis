package bt.gov.moe.nfe.newedge.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import bt.gov.moe.nfe.newedge.dto.UserDto;
import bt.gov.moe.nfe.newedge.services.userservice.UserService;

@Controller
public class CommonController {
	 @Autowired
	 UserService services;
	@GetMapping("/profile")
	public ModelAndView userlogin(HttpServletRequest request,Model model){
		HttpSession session = request.getSession();
		UserDto dto=(UserDto) session.getAttribute("userdetail");
		UserDto dto1=services.getUserDetails(""+dto.getUserId());
		model.addAttribute("userdetail", dto1);
		model.addAttribute("current_page", "nfe/common/profile");  
		return new ModelAndView("nfe/common/dashboard");
	}
	@GetMapping("/mastermanagement")
	public ModelAndView mastermanagement(HttpServletRequest request,Model model){
		model.addAttribute("current_page", "nfe/admininstration/masterindex");  
		return new ModelAndView("nfe/common/dashboard");
	}
}
