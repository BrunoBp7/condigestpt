package condigest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import condigest.model.User;
import condigest.service.LoginService;
import condigest.utils.SecurityUtils;

@Controller
public class LoginController {
    
    @Autowired LoginService logServ;

    
}
