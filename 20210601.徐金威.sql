-- 创建数据库
create database if not exists schools default charset=utf8;
-- 使用数据库
use schools;
-- 创建表格
create table if not exists studentinfo(
		id int primary key auto_increment,
		`name` varchar(20),
		sex char,
		age int,
		address varchar(100)
);
-- 查看数据表
show tables;
-- 插入数据
insert into studentinfo(`name`,sex,age,address) values ("贾宝玉","男",18,"北平"),
("贾政","男",40,"浙江"),("晴雯","女",20,"四川"),("袭人","女",29,"贵州"),("薛宝钗","女",19,"北平"),
("林黛玉","女",17,"浙江");
-- 查看数据     通配符 * 表示所有
select * from studentinfo;
-- 手动写出字段 全量查询
select id, `name`, sex, age, address from studentinfo;
-- 只查询指定的数据列
select id, `name`, sex from studentinfo;
-- 条件查询
select * from studentinfo where sex = '女';
-- 根据查询结果排序  order by
select * from studentinfo order by age desc;
select * from studentinfo order by age desc ,id asc;

-- 显示查询结果的条数
select * from studentinfo limit 3;
-- 显示查询结果中从索引为5开始的往后3条数据
select * from studentinfo limit 5,3;

-- 复合
select * from studentinfo where sex= '女' order by age desc limit 3;
-- 别名  AS as 可以省略
select id as 编号, `name` as 姓名, sex as 性别, age as 年龄, address as 地址 from studentinfo;
select id  编号, `name`  姓名, sex  性别, age  年龄, address  地址 from studentinfo;
-- 单条件查询
select * from studentinfo where age<20;
select * from studentinfo where age is not null;
-- 多条件查询
-- 不等于
select * from studentinfo where age !=20;
select * from studentinfo where age <>20;
select * from studentinfo where not (age = 20);
-- 与 或
select * from studentinfo where age >20 && sex = '女';
select * from studentinfo where age >20 and sex = '女';
select * from studentinfo where age >20 || sex = '女';
select * from studentinfo where age >20 or sex = '女';
-- 去重 去除重复的数据
select distinct `name`,sex, age,address from studentinfo;