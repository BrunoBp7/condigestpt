package condigest.controller;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import condigest.model.User;
import condigest.repository.UserRepository;

@Controller
public class MainController {
	@Autowired
	UserRepository userRepo;
    
    public static HttpSession session() {
        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        return attr.getRequest().getSession(true); // true == allow create
    }

    @RequestMapping("/main")
    public String showMainPage(HttpServletRequest request) {
//        User user = request.getSession().setAttribute("user", );

        return "index";
    }
    
    @RequestMapping("/login")
    public String showLoginPage() {
        return "login";
    }
    
    @RequestMapping("/test")
    public String showTestPage() {
    	System.out.println("sdkfjbsdgjb");
        return "userHome";
    }    
    @RequestMapping("/saveUser")
	public String saveUser(
			@RequestParam(value = "name") String name,
			@RequestParam(value = "userType") boolean userType,
			@RequestParam(value = "email") String email,
			@RequestParam(value = "alternativeEmail", required = false) String alternativeEmail,
			@RequestParam(value = "telephone") String telephone, 
			@RequestParam(value = "alternativeTelephone", required = false) String alternativeTelephone,
			@RequestParam(value = "birthdayField") Date birthdayField,
			@RequestParam(value = "nationalIdNumber") String nationalIdNumber,
			@RequestParam(value = "userName") String userName,
			@RequestParam(value = "password") String password, 
			@RequestParam(value = "passwordConfirmation", required = false) String passwordConfirmation, 
			@RequestParam(value = "inputMessage", required = false) String inputMessage			
			) {
		System.out.println("sdkfjbsdlgf");
//		ModelAndView mav = new ModelAndView("accessdenied");
//		User user = new User(telephone, email, userType, birthdayField, name, nationalIdNumber, userName, password);
//		userRepo.persist(user);

		return "ok";
	}
    
    
    
}
