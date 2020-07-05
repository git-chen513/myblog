package com.blog.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


/**
 * @Author Baker.chen
 *
 * 由于博客和标签是多对多的关系，因此需要一张中间表进行关联
 * 这个实体类就是把博客和标签关系存到数据库中使用的类
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class BlogAndTag {

    private Long tagId;

    private Long blogId;
}
