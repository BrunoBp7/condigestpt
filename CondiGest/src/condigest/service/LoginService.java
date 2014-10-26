package condigest.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import condigest.model.User;
import condigest.repository.UserRepository;

@Service
@Transactional
public class LoginService {

    @Autowired
    UserRepository userRepo;

    
    
    
    
}
