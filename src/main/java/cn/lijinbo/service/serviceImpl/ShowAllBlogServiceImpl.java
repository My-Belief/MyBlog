package cn.lijinbo.service.serviceImpl;

import cn.lijinbo.mapper.BlogImfMapper;
import cn.lijinbo.pojo.BlogImf;
import cn.lijinbo.service.ShowAllBlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
public class ShowAllBlogServiceImpl implements ShowAllBlogService {

    @Autowired
    private BlogImfMapper blm;

    public void setBlm(BlogImfMapper blm) {
        this.blm = blm;
    }

    @Override
    public BlogImf ShowAllBlog() {
        return blm.selectAllBlog();
    }
}
