package condigest.controller;

import java.sql.Date;
import java.text.ParseException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import condigest.model.User;
import condigest.repository.UserRepository;
import condigest.service.UserService;
import condigest.utils.SecurityUtils;

@Controller
@Transactional
@SessionAttributes("user")
public class UserController {
	
	@Autowired
	UserRepository userRepo;
	
	@Autowired
	UserService userServ;

	@RequestMapping("/registerUser")
	public ModelAndView registerUser() {
		ModelAndView mav = new ModelAndView("registeruser");
		List<User> listOfUsers = userRepo.getListOfAllUsers();
		mav.addObject("listOfUsers", listOfUsers);

		return mav;
	}
	
	@RequestMapping("/makeLogin")
	public ModelAndView makeLogin(
			@RequestParam(value = "inputUserOrEmail") String userNameOrEmail,
			@RequestParam(value = "inputPassword") String password,
			HttpServletRequest request
			) {
		System.out.println("merda");
		ModelAndView mav = new ModelAndView("index");

		User user = userServ.identifyUserByNameOrEmailAndPass(userNameOrEmail, password);
		if (user != null) {
			System.out.println(user.getName());
//			mav.addObject("user", user);
			request.getSession().setAttribute("user", user);
			return mav;
		} else {
			System.out.println("user null");
			mav.addObject("errorMessage", "no user found");
			return mav;
		}
	}
	
	@RequestMapping("/makeLogout")
	public String makeLogout(HttpSession session){
		session.invalidate(); 
		return "redirect:main";
	}

	@RequestMapping("/saveUser")
	public ModelAndView saveUser(
			@RequestParam(value = "name") String name,
			@RequestParam(value = "userType") boolean userType,
			@RequestParam(value = "email") String email,
			@RequestParam(value = "alternativeEmail", required = false) String alternativeEmail,
			@RequestParam(value = "telephone") String telephone,
			@RequestParam(value = "alternativeTelephone", required = false) String alternativeTelephone,
			@RequestParam(value = "birthdayField") String birthdayField,
			@RequestParam(value = "nationalIdNumber") String nationalIdNumber,
			@RequestParam(value = "userName") String userName,
			@RequestParam(value = "password") String password,
			@RequestParam(value = "inputMessage", required = false) String inputMessage)
			throws ParseException {

		// always add the string "cdg" to register one password and also to check into DB.
		password = SecurityUtils.md5Encode(password + "cdg");
		Date birthday = java.sql.Date.valueOf(birthdayField);

		ModelAndView mav = new ModelAndView("registeruser");
		
		User user = new User(telephone, email, userType, birthday, name, nationalIdNumber, userName, password);
		if (alternativeEmail != null) {
			user.setAlternativeEmail(alternativeEmail);
		}
		if (alternativeTelephone != null) {
			user.setPhone(alternativeTelephone);
		}
		if (inputMessage != null) {
			user.setNotes(inputMessage);
		}
		userRepo.persist(user);
//		User confirm = userRepo.findUserByNameOrEmail(email);
//		if (confirm!=null) {
//			System.out.println("not null");
//			mav.addObject("user", user);
//			return mav;
//		}else {
//			System.out.println("null");
//			mav.addObject("error", "");
//			return mav;
//		}
		return mav;
	}
	
	public static HttpSession session() {
		ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder
				.currentRequestAttributes();
		// User user = request.getSession().setAttribute("user", );

		return attr.getRequest().getSession(true); // true == allow create
	}
}
