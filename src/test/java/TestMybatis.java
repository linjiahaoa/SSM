import com.linjia.dao.UserDao;
import com.linjia.domain.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class TestMybatis {

    @Test
    public void run1() throws IOException {
        InputStream resourceAsStream = Resources.getResourceAsStream("SqlMapConfig.xml");
        SqlSessionFactory factory=new SqlSessionFactoryBuilder().build(resourceAsStream);
        SqlSession sqlSession=factory.openSession();
        UserDao userDao=sqlSession.getMapper(UserDao.class);
        List<User> list = userDao.findAll();
        for (User user: list) {
            System.out.println(user);
        }

        sqlSession.close();
        resourceAsStream.close();
    }

}
