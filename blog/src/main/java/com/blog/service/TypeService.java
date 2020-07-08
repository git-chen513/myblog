package com.blog.service;

import com.blog.pojo.Type;
import java.util.List;

/**
 * @Author Baker.chen
 */
public interface TypeService {

    int saveType(Type type);

    Type getType(Long id);

    Type getTypeByName(String name);

    List<Type> getAllType();

    /**
     * 首页右侧展示type对应的博客数量
     * @return
     */
    List<Type> getBlogType();

    int updateType(Type type);

    int deleteType(Long id);
}
