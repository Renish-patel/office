package springMVC.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springMVC.model.onlyUser;
import springMVC.service.Userservice;

@Controller
public class ContactController {
	@Autowired
	private Userservice userservice;
	
	
	
	
	@RequestMapping("/contact")
	public String showForm(Model m) {
		m.addAttribute("Header","Please enter your details");
		return "contact";
	}

	@RequestMapping(path = "/processform", method = RequestMethod.POST)
	public String handleForm( @RequestParam("userName") String userName,
			@RequestParam("passwords") String userPassword, Model model) {
		
		onlyUser user = new onlyUser();

		user.setPasswords(userPassword);
		user.setUserName(userName);
		
		model.addAttribute("user",user );
		
//		System.out.println("user Email"+userEmail);
//		System.out.println("userName"+userName);
//		System.out.println("password"+userPassword);
//		model.addAttribute("name",userName);
//		model.addAttribute("Email",userEmail);
//		model.addAttribute("password",userPassword);
		this.userservice.createUser(user);
		return "sucess";
	}
}
