import com.github.pagehelper.PageInfo;
import com.my.entity.Page;
import com.my.entity.User;
import com.my.sevice.UserService;
import com.my.sevice.UserServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class TestPage {
    @Autowired
    @Qualifier("userServiceImpl")
    private UserService userService;
    @Test
    public void test(){
        Page page = new Page(2,2);
        PageInfo<User> users = userService.queryUsers(page);
    }
}
