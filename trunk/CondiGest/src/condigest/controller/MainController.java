package condigest.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
    
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
    
    @RequestMapping("/saveUser")
    public ModelAndView saveUser(){
    	ModelAndView mav = new ModelAndView("");
    	
    	
    	retur mav;
    }
}
