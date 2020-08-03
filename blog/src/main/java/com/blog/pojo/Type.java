package com.blog.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author Baker.chen
 *
 * 分类类
 * 一个分类可对应多篇博客，所以实体类中有一个博客集合
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Type {

    private Long id;
    private String name;

    private List<Blog> blogs = new ArrayList<>();
}
