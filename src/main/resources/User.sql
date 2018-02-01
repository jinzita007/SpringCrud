--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL COMMENT '用户名ID',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar (255) NOT NULL COMMENT '用户密码',
  `email` varchar(100) NOT NULL COMMENT '电子邮箱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
