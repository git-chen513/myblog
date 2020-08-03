package com.blog.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author Baker.chen
 *
 * 标签类
 * 一个标签可对应多篇博客，所以实体类中有一个博客集合
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Tag {
    private Long id;
    private String name;

    private List<Blog> blogs = new ArrayList<>();
}
