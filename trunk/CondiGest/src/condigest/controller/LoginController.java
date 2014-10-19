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

    @RequestMapping("/makeLogin")
    public ModelAndView makeLogin(
            @RequestParam(value="inputUserOrEmail") String inputUserOrEmail,
            @RequestParam(value="inputPassword") String inputPassword
            ){
        inputUserOrEmail = inputUserOrEmail.toLowerCase();
        inputPassword = SecurityUtils.md5Encode(inputPassword);
        System.out.println(inputPassword);
        
        User user =  logServ.identifyUserByNameOrEmailAndPass(inputUserOrEmail, inputPassword);
        
        if (user != null) {
            ModelAndView mv = new ModelAndView("userHome");
            mv.addObject("user", user);
            return mv;
        }else {
            return null;
        }
    }
}
