--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '用户名ID' ,
  `username` VARCHAR(50) NOT NULL COMMENT '用户名' ,
  `password` VARCHAR(255) NOT NULL COMMENT '密码' ,
  `email` VARCHAR(100) NOT NULL COMMENT '用户电子邮箱',
PRIMARY KEY (`id`)) ENGINE = InnoDB DEFAULT CHARSET=utf8;;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, '小红', '123456', 'xiaohong@qq.com'),
(2, '飞燕', 'admin', 'feiyan@sina.com');

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `user_id` int(11) NOT NULL COMMENT '所属用户名ID',
  `title` varchar(200) NOT NULL COMMENT '标题',
PRIMARY KEY (`id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `user_id`, `title`) VALUES
(1, 1, '愿时光能缓，许故人不散'),
(2, 2, '曲声叮咚，光阴悠长'),
(3, 2, '我是，轻轻穿过你指尖的风');

