package condigest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @RequestMapping("/main")
    public String showMainPage() {
        return "index";
    }
    
    @RequestMapping("/login")
    public String showLoginPage() {
        return "login";
    }
}
