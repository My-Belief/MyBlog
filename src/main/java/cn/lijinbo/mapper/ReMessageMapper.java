package cn.lijinbo.mapper;

import cn.lijinbo.pojo.ReMessage;

public interface ReMessageMapper {
    int deleteByPrimaryKey(Integer msid);

    int insert(ReMessage record);

    int insertSelective(ReMessage record);

    ReMessage selectByPrimaryKey(Integer msid);

    int updateByPrimaryKeySelective(ReMessage record);

    int updateByPrimaryKey(ReMessage record);
}