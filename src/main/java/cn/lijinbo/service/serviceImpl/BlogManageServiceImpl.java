package cn.lijinbo.service.serviceImpl;

import cn.lijinbo.mapper.BlogImfMapper;
import cn.lijinbo.pojo.BlogImf;
import cn.lijinbo.service.BlogManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
public class BlogManageServiceImpl implements BlogManageService {

    @Autowired
    private BlogImfMapper blm;

    public void setBlm(BlogImfMapper blm) {
        this.blm = blm;
    }

    @Override
    public List<BlogImf> ShowAllBlog() {
        return blm.selectAllBlog();
    }

    @Override
    public void publishBlog(BlogImf blogImf) {
        blm.insertBlogArticle(blogImf);
    }

    @Override
    public void deleteByBno(Integer bno) {
        blm.deleteByBno(bno);
    }

    @Override
    public BlogImf showArticle(Integer bno) {
        return blm.showArticleByBno(bno);
    }
}
