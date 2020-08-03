package com.blog.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @Author Baker.chen
 *
 * 评论类，存储博客评论的内容以及评论者的信息
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Comment {
    private Long id;
    private String nickname;
    private String email;
    private String content;
    private Date createTime;
    private Long blogId;
    private Blog blog;

    /**
     * 是否为管理员评论
     */
    private boolean adminComment;

    /**
     * 头像
     */
    private String avatar;

    /**
     * 父评论id
     */
    private Long parentCommentId;
    private String parentNickname;

    /**
     * 父评论
     */
    private Comment parentComment;
}
