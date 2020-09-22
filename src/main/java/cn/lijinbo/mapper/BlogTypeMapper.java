package cn.lijinbo.mapper;

import cn.lijinbo.pojo.BlogType;

public interface BlogTypeMapper {
    int deleteByPrimaryKey(Integer tid);

    int insert(BlogType record);

    int insertSelective(BlogType record);

    BlogType selectByPrimaryKey(Integer tid);

    int updateByPrimaryKeySelective(BlogType record);

    int updateByPrimaryKey(BlogType record);
}