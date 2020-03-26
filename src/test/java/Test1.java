import com.linjia.domain.User;
import com.linjia.service.UserService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class Test1 {
    @Test
    public void run1(){
        ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:spring/spring.xml");
        UserService us=(UserService)ac.getBean("userService");
        User user=new User();
        user.setUid(1234);
        user.setUpwd("1234");
        user.setUname("ll");
        us.saveUser(user);

    }
}
