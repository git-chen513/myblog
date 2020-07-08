/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : myblog

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2020-07-08 23:49:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `first_picture` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `appreciation` int(11) NOT NULL DEFAULT '0',
  `share_statement` int(11) NOT NULL DEFAULT '0',
  `commentabled` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `recommend` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `description` text,
  `tag_ids` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES ('12', '设计模式之建造者模式', '建造者模式（Builder Pattern）属于创建型模式；何为创建型模式？就是帮我们省去直接new的过程，从而帮助我们更好的创建对象。建造者模式又叫生成器模式，它可以将复杂对象的建造过程抽象出来，使这个抽象过程的不同实现方法可以构造出不同表现（属性）的对象。建造者模式 是一步一步创建一个复杂的对象，它允许用户只通过指定复杂对象的类型和内容就可以构建它们，用户不需要知道内部的具体构建细节。\r\n\r\n就好比我们要买一辆汽车，我们可以直接告诉卖车的人我们需要的型号即可，然后付费就可以得到一辆汽车了，而汽车的制造过程是非常复杂的，用户却无需知道。从代码的角度来说，我们要得到一个复杂的汽车对象，我们只需要说出对象的类型和内容即可，通过建造者模式就可以给我们返回一个复杂的对象，而对象内部的创建过程和细节我们无需知道。\r\n\r\n要引出建造者模式，最典型的例子就是盖房问题，我们知道，要想得到一个房子，需要经过打地基、砌墙、封顶、粉刷一系列的过程；造出来房子有各种各样的，比如普通房，高楼，别墅，虽然各种房子的制造过程是一样的，但是具体的要求还是有区别的，例如我们造一个普通的房子需要打地基5米，而造一栋高楼却需要打地基50米。现在要求我们编码实现造房子的需求。\r\n\r\n**类图如下:**\r\n\r\n![类图](https://img-blog.csdnimg.cn/20200504221834663.png \"类图\")\r\n\r\n**建造者模式的四个角色**\r\n\r\n- Product（产品角色）： 一个具体的产品对象\r\n- Builder（抽象建造者）： 创建一个 Product 对象的各个部件指定的接口/ 抽象类；或者说是声明了创建产品需要的抽象方法\r\n- ConcreteBuilder（具体建造者）： 实现接口或继承抽象类，构建和装配各个部件；或者说是实现了生产产品的方法\r\n- Director（指挥者）： 构建一个使用 Builder 接口的对象。它用于指导具体构建者如何构建产品，控制调用先后次序，并向调用者返回完整的产品类。它主要有两个作用，一是：隔离了客户与对象的生产过程，二是：负责控制产品对象的生产过程。\r\n\r\n**建造者模式的优点**\r\n\r\n1. 产品的建造和表示分离，实现了解耦，使用建造者模式可以使客户端不必知道产品内部组成的细节。\r\n2. 将复杂产品的创建步骤分解在不同的方法中，使得创建过程更加清晰。\r\n3. 具体的建造者类之间是相互独立的，这有利于系统的扩展。增加新的具体建造者无需修改原有类库的代码，符合\"开闭原则\"。\r\n\r\n**建造者模式的缺点**\r\n\r\n1. 建造者模式所创建的产品一般具有较多的共同点，其组成部分相似；如果产品之间的差异性很大，则不适合使用建造者模式，其使用范围受到一定的限制。\r\n2. 如果产品的内部变化复杂，可能会导致需要很多具体建造者类来实现这种变化，导致系统变得很庞大。\r\n', 'https://img-blog.csdnimg.cn/20200504221834663.png', '', '100', '1', '1', '1', '1', '1', '2019-06-01 18:07:58', '2019-07-01 20:28:19', '4', '1', '这是一篇关于设计模式的博客', '9,3,4');
INSERT INTO `t_blog` VALUES ('13', '设计模式之策略模式', '**什么是策略模式？**\r\n\r\n在阎宏博士的《JAVA与模式》一书中开头是这样描述策略（Strategy）模式的：\r\n\r\n策略模式属于对象的行为模式。其用意是针对一组算法，将每一个算法封装到具有共同接口的独立的类中，从而使得它们可以相互替换。策略模式使得算法可以在不影响到客户端的情况下发生变化。\r\n\r\n这个模式涉及到三个角色：\r\n\r\n- 环境(Context)角色：持有一个Strategy的引用，至于需要使用到哪个策略，我们可以在构造器中指定。\r\n- 抽象策略(Strategy)角色：这是一个抽象角色，通常由一个接口或抽象类实现。此角色给出所有的具体策略类所需的接口。\r\n\r\n- 具体策略(ConcreteStrategy)角色：包装了相关的算法或行为。\r\n\r\n**策略模式的优缺点**\r\n\r\n*优点：*\r\n\r\n1. 策略模式的核心思想是：多用组合/聚合，少用继承；用行为类组合，而不是行为的继承。更有弹性\r\n\r\n2. 体现了“对修改关闭，对扩展开放”原则，客户端增加行为不用修改原有代码，只要添加一种策略（或者行为）即可，避免了使用多重转移语句（if…else）\r\n\r\n3. 提供了可以替换继承关系的办法： 策略模式将算法封装在独立的 Strategy 类中使得你可以独立于其 Context 改\r\n变它，使它易于切换、易于理解、易于扩展\r\n\r\n*缺点：*\r\n\r\n1. 客户端必须知道所有的策略类，并自行决定使用哪一个策略类。这就意味着客户端必须理解这些算法的区别，以便适时选择恰当的算法类。换言之，策略模式只适用于客户端知道算法或行为的情况\r\n\r\n2. 由于策略模式把每个具体的策略实现都单独封装成为类，每添加一个策略就要增加一个类，当策略过多是会导致类数目庞（类爆炸）\r\n\r\n', 'https://img-blog.csdnimg.cn/20200614134953502.png', '', '112', '1', '1', '1', '1', '1', '2020-06-27 20:34:58', '2020-06-28 20:34:58', '4', '1', '这是一篇关于策略模式的博客', '11,12');
INSERT INTO `t_blog` VALUES ('14', '关于Object类的clone()方法', 'clone()方法是用于浅克隆或者深克隆一个java对象的，但是要注意一个误区：clone方法是Object类的，并不是Cloneable接口的，Cloneable只是一个标记接口，标记接口是用于标记实现该接口的类具有某种该接口标记的功能，常见的标记接口有三个：Serializable、Cloneable、RandomAccess，没有实现Cloneable接口，那么调用clone方法就会爆出CloneNotSupportedException异常。\r\n\r\n要使得一个java类可以实现克隆，那么该类就需要实现Cloneable接口，并且重写基类Object的clone方法，其实Object的clone方法就已经默认有克隆的能力了，并且实现的是浅克隆，那为什么一定得重写clone方法呢？\r\n\r\n我们先来看Object类的clone方法源码：\r\n```java\r\nprotected native Object clone() throws CloneNotSupportedException;\r\n```\r\n可以看到，该方法非常之特殊：\r\n\r\n方法被native关键字修饰，并且该方法没有方法体，没有方法体的方法我们认为是抽象方法，可是Object类并不是一个抽象类，而是一个具体类，那为什么还能容纳抽象方法呢，其实就是native关键字在起作用，被native关键字修饰的方法属于本地方法，表示Java的作用范围已经无法达到，底层会去调用C语言或者C++的库。\r\n\r\n该方法是被protected修饰，这就表明我们在子类中不重写此方法，就在子类外无法访问，因为这个protected权限是仅仅能在Object所在的包和子类能访问的，这也验证了子类重写父类方法权限修饰符可以变大但不能变小的说法。\r\n\r\n所以我们要使得一个类具有clone的能力，可以先实现Cloneable接口，再重写clone方法，方法内部去调用了父类的clone方法，其实是为了扩大访问权限，也可以把protected改为public，以后再继承就不用重写了。当然这只是浅克隆的clone函数，深克隆就需要修改clone的方法体了。\r\n\r\n```java\r\npublic class Mytest implements  Cloneable{\r\n    /**\r\n     * 重写clone方法，调用父类默认的clone方法，实现的是浅克隆\r\n     * @return\r\n     * @throws CloneNotSupportedException\r\n     */\r\n    @Override\r\n    protected Object clone() throws CloneNotSupportedException {\r\n        return super.clone();\r\n    }\r\n}\r\n```', 'https://img-blog.csdnimg.cn/20190918140053667.png', '', '245', '1', '1', '1', '1', '1', '2020-06-28 20:45:07', '2020-06-29 20:45:07', '1', '1', '这是一篇关于Object类的clone()方法的博客', '13,14');
INSERT INTO `t_blog` VALUES ('15', 'Java内存区域', 'java与C++之间有一堵由内存动态分配和垃圾收集技术所围成的高墙，墙外面的人想进去，墙里面的人想出来—《深入理解java虚拟机》\r\n\r\n**jvm内存模型**\r\n\r\n（也叫java虚拟机运行时数据区）\r\n\r\n1.程序计数器（Program Counter Register）：线程私有，可以看作是当前线程所执行的字节码的行号指示器。此内存区域是唯一一个在《Java虚拟机规范》中没有任何OutOfMemoryError情况的区域。\r\n\r\n2.Java虚拟机栈（Java Virtual Machine Stack）：线程私有，它的生命周期与线程相同，虚拟机描述的是Java方法执行的线程内存模型，每个方法被执行的时候，Java虚拟机都会同步创建一个栈帧，用于存放局部变量表、操作数栈、动态连接、方法出口等信息。另外，这类内存区域规定了两类异常状况：如果线程请求的栈深度大于虚拟机所允许的深度，将抛出StackOverflowError，如果java虚拟机栈容量可以动态扩展，当栈扩展到无法申请到足够的内存会抛出OutOfMemoryError异常。\r\n\r\n3.本地方法栈（Native Method Stack）：线程私有，本地方法栈和虚拟机栈的区别是虚拟机栈为虚拟机执行java方法服务，而本地方法栈则是为虚拟机使用到的本地方法服务。\r\n\r\n4.Java堆（Heap）：线程共享，在虚拟机启动时创建，所有的对象实例和数组都应当在堆上分配，垃圾收集的主要区域，如果在java堆中没有内存完成实例分配，并且堆也无法再扩展时，jaav虚拟机将会抛出OutOfMemoryError异常。\r\n\r\n5.方法区（Method Area）：线程共享，用于存储已被虚拟机加载的类型信息、常量、静态变量、即时编译器编译后的代码缓存等数据，方法区逻辑上属于堆的一部分，但是为了与堆进行区分，通常又叫“非堆”。\r\n\r\n补充：局部变量表存放了编译器可知的各种Java虚拟机基本数据类型和对象引用；对于基本数据类型，引用和值都存在栈中；对于引用类型，只有引用存在栈中。这些数据类型在局部变量表中的存储空间以局部变量槽（slot）来表示，局部变量表所需的内存空间在编译器完成分配，在方法运行期间不会改变局部变量表的大小。\r\n', 'https://img-blog.csdnimg.cn/20200314001938336.png', '', '333', '1', '1', '1', '1', '1', '2020-07-01 20:54:06', '2020-07-02 20:54:06', '3', '1', '这是一篇关于java内存模型的博客', '15,16');
INSERT INTO `t_blog` VALUES ('16', 'IP地址相关知识点', 'Internet中的主机地址是用IP地址来唯一标识的，换言之，就是每台主机都有一个唯一的IP地址。每个IP地址都由4个小于256的数字组成，数字之间用\".\"分开，Internet的IP地址共有32位，4个字节，可以用二进制表示也可以用十进制表示。\r\n\r\n**IP地址的分类**\r\n\r\nInternet中的地址可分为5类：A类、B类、C类、D类和E类\r\n\r\nA类：网络地址占1个字节（8位），定义最高位为0来标识此类地址，余下7位为真正的网络地址，支持1~126个网络。后面的三个字节（24位）为主机地址，因此每个A类网络中最大的可用主机数为（2^24 -2）。所以A类全部的地址有（2^7 -2）*（2^24-2）。A类地址的第一个字节范围为0-127。\r\n\r\nB类：网络地址占2个字节（16位），定义最高位为10来标识此类地址，余下14位为真正的网络地址。后面的两个字节（16位）为主机地址，因此每个B类网络中最大的可用主机数为（2^16 -2）。所以B类全部的地址有（2^14 -2）*（2^16-2）。B类地址的第一个字节范围为128-191。\r\n\r\nC类：网络地址占3个字节（24位），定义最高位为110来标识此类地址，余下21位为真正的网络地址。后面的一个字节（8位）为主机地址，因此每个C类网络中最大的可用主机数为（2^8 -2）。所以C类全部的地址有（2^21 -2）*（2^8-2）。C类地址的第一个字节范围为192-223。\r\n\r\nD类：该类地址多用于组播，例如用于路由器修改；定义最高位为1110来标识此类地址。D类地址的第一个字节范围为224-239。\r\n\r\nE类：该类地址为实验保留；定义最高位为1111来标识此类地址。E类地址的第一个字节范围为240-225。\r\n\r\n*注意：*\r\n①可用的网络数量减2是因为网络号字段中全0的IP地址为保留地址，表示本网络，而网络号字段中全1的IP地址保留用于环回测试本机的进程间通信。例如对于A类地址来说（0.0.0.0到0.255.255.255是保留地址，用于表示所有的IP地址，127.0.0.0到127.255.255.255是保留地址，用于环回测试） ，因此A类地址能用的网络号是1-126，能用的IP地址是1.0.0.0-126.255.255.255\r\n\r\n②可用的主机数减2是因为主机号字段为全0表示该IP地址为本机所属网络的地址（网络地址），而全1表示所有的（广播地址），因此全1的主机号字段表示该网络中的所有主机。例如对于IP地址为192.168.1.58的主机来说，网络地址为192.168.1.0；广播地址为192.168.1.255\r\n\r\n**子网掩码**\r\n\r\n子网掩码：所有对应网络号的部分用1填上，所有对应主机号的部分用0填上\r\n\r\n子网掩码的作用就是用于指明哪些是网络号部分，哪些是主机号部分\r\n\r\n例如A类IP地址默认的子网掩码是255.0.0.0；B类IP地址默认的子网掩码是255.255.0.0；C类IP地址默认的子网掩码是255.255.255.0\r\n\r\n将子网掩码和IP地址按位进行逻辑“与”运算，得到IP地址的网络地址，剩下的部分就是主机地址，从而区分出任意IP地址中的网络地址和主机地址。\r\n\r\n例如，有两台主机，主机一的IP地址为222.21.160.6，子网掩码为255.255.255.192，主机二的IP地址为222.21.160.73，子网掩码为255.255.255.192。主机一要给主机二发送数据，先要判断两个主机是否在同一网段。', 'https://img-blog.csdnimg.cn/20200523163519404.png', '', '1099', '1', '1', '1', '1', '1', '2020-06-30 20:57:30', '2020-07-01 20:57:30', '6', '1', '这是一篇关于IP地址的博客', '17,18');
INSERT INTO `t_blog` VALUES ('17', '面试高频-哈希表', '**1. 什么是哈希表**\r\n\r\nHash表也称散列表，也有直接译作哈希表，Hash表是一种根据关键字值（key - value）而直接进行访问的数据结构。它基于数组，通过把关键字映射到数组的某个下标来加快查找速度，但是又和链表、树等数据结构不同，在这些数据结构中查找某个关键字，通常要遍历整个数据结构，也就是O(N)的时间级，但是对于哈希表来说，只是O(1)的时间级。\r\n\r\n哈希表也可以当做一种缓存产品来使用，我们知道，频繁的访问数据库会造成非常大的系统开销，因而出现了很多的缓存产品，例如redis；我们也可以将频繁访问的数据存放在哈希表中，这样每次获取哈希表的值就不用从数据库获取，减少系统开销。\r\n\r\n**2. 哈希函数**\r\n\r\n为什么需要哈希函数？哈希函数就是关键字转换为数组的下标，这个转换的函数称为哈希函数（也称散列函数），转换的过程称为哈希化。\r\n\r\n哈希函数就是把一个大范围的数字哈希（转化）成一个小范围的数字，这个小范围的数对应着数组的下标。使用哈希函数向数组插入数据后，这个数组就是哈希表。\r\n\r\n\r\n**3. 哈希冲突**\r\n\r\n多个key映射到相同的数组下标，即发生了哈希冲突；常见解决冲突的方法有：开放地址法、链地址法、桶\r\n\r\n**4. 开放地址法**\r\n\r\n若数据项不能直接存放在由哈希函数所计算出来的数组下标时，就要寻找其他的位置。分别有三种方法：线性探测、二次探测以及再哈希法。\r\n\r\n*4.1 线性探测*\r\n\r\n线性探测，指的就是线性的查找空白单元，例如我们要插入的key对应哈希表数组的下标是3，并且这个位置3已经被其它数据占用了，那么会查看下一个位置4是否被占用，若被占用，继续往下递增查找，直到找到一个空白的位置。\r\n\r\n*4.2 二次探测*\r\n\r\n二次探测的思想是探测相距较远的单元，而不是和原始位置相邻的单元，二次探测可以防止聚集的产生；但是二次探测法也会导致二次聚集的产生。\r\n\r\n线性探测中，如果哈希函数计算的原始下标是x, 线性探测就是x+1, x+2, x+3, 以此类推；而在二次探测中，探测的过程是x+1, x+4, x+9, x+16，以此类推，到原始位置的距离是步数的平方。\r\n\r\n*4.3 再哈希法*\r\n\r\n再哈希法是为了消除聚集和二次聚集提出来的；因为线性探测和二次探测产生的探测序列步长总是固定的，容易产生聚集，而再哈希法是指出现冲突后，把关键字用不同的哈希函数再做一遍哈希化，用这个结果作为步长。对于指定的关键字，步长在整个探测中是不变的，不过不同的关键字使用不同的步长。', 'https://img-blog.csdnimg.cn/20200411220925828.png', '', '888', '1', '1', '1', '1', '1', '2020-07-02 21:00:40', '2020-07-03 21:00:40', '5', '1', '这是一篇关于哈希表的博客', '19,10');

-- ----------------------------
-- Table structure for t_blog_tags
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_tags`;
CREATE TABLE `t_blog_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) DEFAULT NULL,
  `blog_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_blog_tags
-- ----------------------------
INSERT INTO `t_blog_tags` VALUES ('1', '3', '4');
INSERT INTO `t_blog_tags` VALUES ('2', '4', '1');
INSERT INTO `t_blog_tags` VALUES ('3', '4', '3');
INSERT INTO `t_blog_tags` VALUES ('4', '5', '3');
INSERT INTO `t_blog_tags` VALUES ('5', '5', '4');
INSERT INTO `t_blog_tags` VALUES ('6', '7', '2');
INSERT INTO `t_blog_tags` VALUES ('7', '6', '5');
INSERT INTO `t_blog_tags` VALUES ('64', '5', '3');
INSERT INTO `t_blog_tags` VALUES ('65', '4', '3');
INSERT INTO `t_blog_tags` VALUES ('66', '4', '6');
INSERT INTO `t_blog_tags` VALUES ('74', '7', '10');
INSERT INTO `t_blog_tags` VALUES ('75', '8', '11');
INSERT INTO `t_blog_tags` VALUES ('76', '8', '12');
INSERT INTO `t_blog_tags` VALUES ('77', '8', '13');
INSERT INTO `t_blog_tags` VALUES ('78', '3', '12');
INSERT INTO `t_blog_tags` VALUES ('79', '9', '12');
INSERT INTO `t_blog_tags` VALUES ('80', '8', '12');
INSERT INTO `t_blog_tags` VALUES ('81', '9', '12');
INSERT INTO `t_blog_tags` VALUES ('82', '3', '12');
INSERT INTO `t_blog_tags` VALUES ('83', '4', '12');
INSERT INTO `t_blog_tags` VALUES ('84', '9', '12');
INSERT INTO `t_blog_tags` VALUES ('85', '3', '12');
INSERT INTO `t_blog_tags` VALUES ('86', '4', '12');
INSERT INTO `t_blog_tags` VALUES ('87', '11', '13');
INSERT INTO `t_blog_tags` VALUES ('88', '12', '13');
INSERT INTO `t_blog_tags` VALUES ('89', '13', '14');
INSERT INTO `t_blog_tags` VALUES ('90', '14', '14');
INSERT INTO `t_blog_tags` VALUES ('91', '15', '15');
INSERT INTO `t_blog_tags` VALUES ('92', '16', '15');
INSERT INTO `t_blog_tags` VALUES ('93', '17', '16');
INSERT INTO `t_blog_tags` VALUES ('94', '18', '16');
INSERT INTO `t_blog_tags` VALUES ('95', '19', '17');
INSERT INTO `t_blog_tags` VALUES ('96', '10', '17');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `blog_id` bigint(20) DEFAULT NULL,
  `parent_comment_id` bigint(20) DEFAULT NULL,
  `admincomment` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('1', '小白', 'bai@qq.com', '小白的评论', '/images/avatar.jpg', '2020-03-15 21:28:13', '4', '-1', null);
INSERT INTO `t_comment` VALUES ('2', '小红', 'hong@qq.com', '小红的评论', '/images/avatar.jpg', '2020-03-15 21:35:02', '4', '-1', null);
INSERT INTO `t_comment` VALUES ('5', '小蓝', 'lan@qq.com', '小蓝的评论', '/images/avatar.jpg', '2020-03-16 15:04:24', '4', '-1', null);
INSERT INTO `t_comment` VALUES ('7', '陈灿杰', '691639910@qq.com', '博主的评论', 'http://5b0988e595225.cdn.sohucs.com/images/20181103/feaa7d14883047fb81bbaa16f681f583.jpeg', '2020-03-16 15:11:07', '2', '-1', '1');
INSERT INTO `t_comment` VALUES ('8', '小黄', '2333@qq.com', '小黄的评论', '/images/avatar.jpg', '2020-03-24 17:41:17', '11', '-1', '0');

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES ('3', '建造者模式');
INSERT INTO `t_tag` VALUES ('9', 'Builder Pattern');
INSERT INTO `t_tag` VALUES ('10', 'java');
INSERT INTO `t_tag` VALUES ('11', '策略模式');
INSERT INTO `t_tag` VALUES ('12', 'Strategy Pattern');
INSERT INTO `t_tag` VALUES ('13', 'object');
INSERT INTO `t_tag` VALUES ('14', 'clone');
INSERT INTO `t_tag` VALUES ('15', 'jvm');
INSERT INTO `t_tag` VALUES ('16', 'java内存模型');
INSERT INTO `t_tag` VALUES ('17', 'IP地址');
INSERT INTO `t_tag` VALUES ('18', '子网掩码');
INSERT INTO `t_tag` VALUES ('19', '哈希表');

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES ('1', 'java基础');
INSERT INTO `t_type` VALUES ('3', 'java深入');
INSERT INTO `t_type` VALUES ('4', '设计模式');
INSERT INTO `t_type` VALUES ('5', '数据结构与算法');
INSERT INTO `t_type` VALUES ('6', '计算机网络');
INSERT INTO `t_type` VALUES ('7', 'Linux');
INSERT INTO `t_type` VALUES ('8', '面经');
INSERT INTO `t_type` VALUES ('9', '实用');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'baker', '陈灿杰', 'e10adc3949ba59abbe56e057f20f883e', '2416871211@qq.com', 'https://avatars2.githubusercontent.com/u/61085694?s=400&u=c0de8440a14dbbe272d8154418ec83fe3fd5201c&v=4', '1', '2020-06-30 18:25:26', null);
