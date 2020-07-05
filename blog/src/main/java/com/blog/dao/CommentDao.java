package com.blog.dao;

import com.blog.pojo.Comment;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author Baker.chen
 */
@Mapper
@Repository
public interface CommentDao {

    /**
     * 根据创建时间倒序来排
     * @param blogId
     * @param blogParentId
     * @return
     */
    List<Comment> findByBlogIdAndParentCommentNull(@Param("blogId") Long blogId, @Param("blogParentId") Long blogParentId);

    /**
     * 查询父级对象
     * @param parentcommentid
     * @return
     */
    Comment findByParentCommentId(@Param("parentCommentId")Long parentcommentid);

    /**
     * 添加一个评论
     * @param comment
     * @return
     */
    int saveComment(Comment comment);
}
