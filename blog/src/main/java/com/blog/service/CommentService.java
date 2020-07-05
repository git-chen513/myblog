package com.blog.service;

import com.blog.pojo.Comment;

import java.util.List;

/**
 * @Author Baker.chen
 */
public interface CommentService {

    List<Comment> getCommentByBlogId(Long blogId);

    int saveComment(Comment comment);
}
