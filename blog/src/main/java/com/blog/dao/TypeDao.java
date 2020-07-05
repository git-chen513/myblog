package com.blog.dao;

import com.blog.pojo.Type;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author Baker.chen
 */
@Mapper
@Repository
public interface TypeDao {

    /**
     * 新增分类
     * @param type
     * @return
     */
    int saveType(Type type);

    /**
     * 根据分类id查询分类
     * @param id
     * @return
     */
    Type getType(Long id);

    /**
     * 根据分类名查询分类
     * @param name
     * @return
     */
    Type getTypeByName(String name);

    /**
     *查询所有分类
     * @return
     */
    List<Type> getAllType();

    /**
     *首页右侧展示分类对应的博客数量
     * @return
     */
    List<Type> getBlogType();

    /**
     * 修改分类名
     * @param type
     * @return
     */
    int updateType(Type type);

    /**
     *根据分类id删除分类
     * @param id
     * @return
     */
    int deleteType(Long id);
}
