package cn.lijinbo.service.serviceImpl;
import cn.lijinbo.mapper.UsersMapper;
import cn.lijinbo.pojo.Users;
import cn.lijinbo.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
public class LoginServiceImpl implements LoginService {

    @Autowired
    private UsersMapper um;

    public void setUm(UsersMapper um) {
        this.um = um;
    }

    @Override
    public Users login(String account) {
        return um.selectUserByAccount(account);
    }
}
