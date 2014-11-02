package condigest.controller;

import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.ParseException;
import java.time.ZonedDateTime;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Set;

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

import condigest.model.Address;
import condigest.model.Message;
import condigest.model.User;
import condigest.repository.AddressRepository;
import condigest.repository.MessageRepository;
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
	MessageRepository msgRepo;
	
	@Autowired
	AddressRepository addRepo;
	
	@Autowired
	UserService userServ;
	
	
	
	@RequestMapping("/userProfile")
	public ModelAndView showUserProfile() {
		ModelAndView mav = new ModelAndView("userpage");
		
		return mav;
	}
	
	@RequestMapping("/getAllMessages")
	public ModelAndView showAllMessages(@RequestParam (value = "id") long id) {
		ModelAndView mav = new ModelAndView("userpage");
		User user = userRepo.findUserById(id);
		Set<Message> sentMessages = user.getListOfSentMessages();
		Set<Message> receivedMessages = user.getListOfReceivedMessages();
		mav.addObject("allSentMessages", sentMessages);
		mav.addObject("allReceivedMessages", receivedMessages);
		return mav;
	}
	

	@RequestMapping("sendMessage")
	public String sendMessage(
			@RequestParam(value = "idSender") long idSender,
			@RequestParam(value = "idReceiver") long idReceiver,
			@RequestParam (value = "inputMessage") String message) {
		
		System.out.println(message);
		
		try {
			message = new String(message.getBytes("ISO-8859-1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		java.util.Date date = new java.util.Date();
		Timestamp dateTime = new java.sql.Timestamp(date.getTime());
		System.out.println(date.toString());
		
		Message msg = new Message(message, false, userRepo.findUserById(idSender), userRepo.findUserById(idReceiver), dateTime);
		msgRepo.persist(msg);
		
		return "redirect:main";
	}

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
			HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("index");

		User user = userServ.identifyUserByNameOrEmailAndPass(userNameOrEmail,
				password);
		if (user != null) {
			Set<Message> sentMessages = user.getListOfSentMessages();
			Set<Message> receivedMessages = user.getListOfReceivedMessages();
			request.getSession().setAttribute("currentUser", user);
			request.getSession().setAttribute("allSentMessages", sentMessages);
			request.getSession().setAttribute("allReceivedMessages", receivedMessages);
			request.getSession().setAttribute("loginOk", "loginOk");
			
			return mav;
		} else {
			System.out.println("user null");
			mav.addObject("errorMessage", "no user found");
			return mav;
		}
	}

	@RequestMapping("/makeLogout")
	public String makeLogout(HttpSession session) {
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
			@RequestParam(value = "inputMessage", required = false) String inputMessage,
			@RequestParam(value = "street") String street,
			@RequestParam(value = "postalCode") String postalCode,
			@RequestParam(value = "state") String state,
			@RequestParam(value = "city") String city,
			@RequestParam(value = "country") String country)
			throws ParseException {

		// To increase the security, we always add the string "cdg" to register one password and also to
		// check into DB.
		password = SecurityUtils.md5Encode(password + "cdg");
		Date birthday = java.sql.Date.valueOf(birthdayField);

		ModelAndView mav = new ModelAndView("registeruser");

		User user = new User(telephone, email, userType, birthday, name,
				nationalIdNumber, userName, password);
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
		Address address = new Address(user, street, city, state, postalCode, country);
		addRepo.persist(address);
		user.setListOfAddress(address);
		userRepo.merge(user);
		return mav;
	}

	public static HttpSession session() {
		ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder
				.currentRequestAttributes();
		// User user = request.getSession().setAttribute("user", );

		return attr.getRequest().getSession(true); // true == allow create
	}
}
