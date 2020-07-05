package com.blog.dao;

import com.blog.pojo.Blog;
import com.blog.pojo.BlogAndTag;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author Baker.chen
 */
@Mapper
@Repository
public interface BlogDao {

    /**
     * 根据博客id查询博客
     * 用于后台展示博客
     * @param id
     * @return
     */
    Blog getBlog(Long id);

    /**
     * 根据博客id查看博客详情
     * @param id
     * @return
     */
    Blog getDetailedBlog(@Param("id") Long id);

    /**
     * 查询所有博客
     * @return
     */
    List<Blog> getAllBlog();

    /**
     * 根据分类id查询博客
     * @param typeId
     * @return
     */
    List<Blog> getByTypeId(Long typeId);

    /**
     * 根据标签id查询博客
     * @param tagId
     * @return
     */
    List<Blog> getByTagId(Long tagId);

    /**
     * 用于主页博客展示
     * @return
     */
    List<Blog> getIndexBlog();

    /**
     * 推荐博客展示
     * @return
     */
    List<Blog> getAllRecommendBlog();

    /**
     * 全局搜索博客
     * @param query
     * @return
     */
    List<Blog> getSearchBlog(String query);

    /**
     * 后台根据标题、分类、推荐搜索博客
     * @param blog
     * @return
     */
    List<Blog> searchAllBlog(Blog blog);

    /**
     * 查询所有年份，返回一个集合
     * @return
     */
    List<String> findGroupYear();

    /**
     * 按年份查询博客
     * @param year
     * @return
     */
    List<Blog> findByYear(@Param("year") String year);

    /**
     * 新增博客
     * @param blog
     * @return
     */
    int saveBlog(Blog blog);

    /**
     * 新增博客和对应的标签
     * @param blogAndTag
     * @return
     */
    int saveBlogAndTag(BlogAndTag blogAndTag);

    /**
     * 修改博客
     * @param blog
     * @return
     */
    int updateBlog(Blog blog);

    /**
     * 删除博客
     * @param id
     * @return
     */
    int deleteBlog(Long id);
}
