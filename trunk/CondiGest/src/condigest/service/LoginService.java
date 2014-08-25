package condigest.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import condigest.model.User;
import condigest.repository.UserRepository;

@Service
@Transactional
public class LoginService {

    @Autowired
    UserRepository userRepo;

    public User identifyUserByNameOrEmailAndPass(String nameOrEmail, String md5Password) {
        boolean isTheRightPass = false;

        User user = userRepo.findUserByNameOrEmail(nameOrEmail);
        
        if (user != null) {

            isTheRightPass = userRepo.isTheRightPassword(user.getId_user(),md5Password);

            if (isTheRightPass) {
                return user;
            } else {
                return null;
            }
        } else {
            return null;
        }
    }
    
    
    
}
