package condigest.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import condigest.model.User;
import condigest.repository.UserRepository;

@Controller
@Transactional
public class MainController {
	
	@Autowired
	UserRepository userRepo;
	
	@RequestMapping("/main")
	public String showMainPage(HttpServletRequest request) {
		return "index";
	}

	@RequestMapping("test")
	public ModelAndView showTestPage() {
		ModelAndView mav = new ModelAndView("test");
		
		List<User> listOfAllUsers = userRepo.getListOfAllUsers();
		mav.addObject("listOfAllUsers", listOfAllUsers);
		for (User user : listOfAllUsers) {
			System.out.println(user.getName());
		}
		return mav;
	}	
}
