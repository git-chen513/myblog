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
 * 博客类，存储博客的基本信息
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Blog {

    private Long id;
    private String title;
    private String content;
    private String firstPicture;
    private String flag;
    private Integer views;
    private boolean appreciation;
    private boolean shareStatement;
    private boolean commentabled;
    private boolean published;
    private boolean recommend;
    private Date createTime;
    private Date updateTime;
    private String description;
    private Long userId;

    /**
     *  这个属性用来在mybatis中进行连接查询的
     */
    private Long typeId;

    /**
     * 获取多个标签的id
     */
    private String tagIds;

    /**
     * 一篇博客对应一个分类
     */
    private Type type;

    /**
     * 一篇博客属于一个博主
     */
    private User user;

    /**
     * 一篇博客对应多个标签
     */
    private List<Tag> tags = new ArrayList<>();

    /**
     *
     * 一篇博客对应多条评论
     */
    private List<Comment> comments = new ArrayList<>();

    public void init(){
        this.tagIds = tagsToIds(this.getTags());
    }

    /**
     * 将tags集合转换为tagIds字符串形式：“1,2,3”,用于编辑博客时显示博客的tag
     * @param tags
     * @return
     */
    private String tagsToIds(List<Tag> tags){
        if(!tags.isEmpty()){
            StringBuffer ids = new StringBuffer();
            boolean flag = false;
            for(Tag tag: tags){
                if(flag){
                    ids.append(",");
                }else {
                    flag = true;
                }
                ids.append(tag.getId());
            }
            return ids.toString();
        }else {
            return tagIds;
        }
    }
}
