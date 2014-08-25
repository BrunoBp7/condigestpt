package condigest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import condigest.service.LoginService;
import condigest.utils.SecurityUtils;

@Controller
public class LoginController {
    
    @Autowired LoginService logServ;

    @RequestMapping("/makeLogin")
    public String makeLogin(
            @RequestParam(value="inputUserOrEmail") String inputUserOrEmail,
            @RequestParam(value="inputPassword") String inputPassword
            ){
        inputUserOrEmail = inputUserOrEmail.toLowerCase();
        inputPassword = SecurityUtils.md5Encode(inputPassword);
        System.out.println(inputPassword);
        
        logServ.identifyUserByNameOrEmailAndPass(inputUserOrEmail, inputPassword);

        return "login";
    }
}
