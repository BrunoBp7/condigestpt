package condigest.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import condigest.model.User;
import condigest.repository.UserRepository;
import condigest.utils.SecurityUtils;

@Service
@Transactional
public class UserService {

	@Autowired
	UserRepository userRepo;
	
	public User identifyUserByNameOrEmailAndPass(String nameOrEmail, String md5Password) {
        md5Password = SecurityUtils.md5Encode(md5Password + "cdg");

        User user = userRepo.findUserByNameOrEmail(nameOrEmail);
        
        if (user != null) {
        	if (user.getPassword().equals(md5Password)) {
				return user;
			}else {
				return null;
			}
        }else {
			return null;
		}
    }	
}







