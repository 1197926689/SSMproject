package com.java.mapper;

import com.java.po.Shoppingcard;
import com.java.po.ShoppingcardExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ShoppingcardMapper {
    int countByExample(ShoppingcardExample example);

    int deleteByExample(ShoppingcardExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Shoppingcard record);

    int insertSelective(Shoppingcard record);

    List<Shoppingcard> selectByExample(ShoppingcardExample example);

    Shoppingcard selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Shoppingcard record, @Param("example") ShoppingcardExample example);

    int updateByExample(@Param("record") Shoppingcard record, @Param("example") ShoppingcardExample example);

    int updateByPrimaryKeySelective(Shoppingcard record);

    int updateByPrimaryKey(Shoppingcard record);
}