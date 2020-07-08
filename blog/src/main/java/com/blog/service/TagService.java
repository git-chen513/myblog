package com.blog.service;

import com.blog.pojo.Tag;

import java.util.List;

/**
 * @Author Baker.chen
 */
public interface TagService {

    int saveTag(Tag tag);

    Tag getTag(Long id);

    Tag getTagByName(String name);

    List<Tag> getAllTag();

    /**
     * 首页展示博客标签
     * @return
     */
    List<Tag> getBlogTag();

    /**
     * 从字符串中获取tag集合
     * @param text
     * @return
     */
    List<Tag> getTagByString(String text);

    int updateTag(Tag tag);

    int deleteTag(Long id);
}
