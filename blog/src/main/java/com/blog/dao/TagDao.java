package com.blog.dao;

import com.blog.pojo.Tag;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author Baker.chen
 */
@Mapper
@Repository
public interface TagDao {

    /**
     * 新增标签
     * @param tag
     * @return
     */
    int saveTag(Tag tag);

    /**
     * 根据标签id查询标签
     * @param id
     * @return
     */
    Tag getTag(Long id);

    /**
     * 根据标签名查询标签
     * @param name
     * @return
     */
    Tag getTagByName(String name);

    /**
     * 查询所有标签
     * @return
     */
    List<Tag> getAllTag();

    /**
     * 修改标签
     * @param tag
     * @return
     */
    int updateTag(Tag tag);

    /**
     * 删除标签
     * @param id
     * @return
     */
    int deleteTag(Long id);

    /**
     * 用于首页展示博客标签
     * @return
     */
    List<Tag> getBlogTag();
}
