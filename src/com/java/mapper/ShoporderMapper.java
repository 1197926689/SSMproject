package com.java.mapper;

import com.java.po.Shoporder;
import com.java.po.ShoporderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ShoporderMapper {
    int countByExample(ShoporderExample example);

    int deleteByExample(ShoporderExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Shoporder record);

    int insertSelective(Shoporder record);

    List<Shoporder> selectByExample(ShoporderExample example);

    Shoporder selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Shoporder record, @Param("example") ShoporderExample example);

    int updateByExample(@Param("record") Shoporder record, @Param("example") ShoporderExample example);

    int updateByPrimaryKeySelective(Shoporder record);

    int updateByPrimaryKey(Shoporder record);
}