SET NAMES UTF8;
DROP DATABASE IF EXISTS tedu;
CREATE DATABASE tedu CHARSET=UTF8;
USE tedu;
CREATE TABLE dept(
  did INT PRIMARY KEY,
  dname VARCHAR(8) UNIQUE NOT NULL
);
INSERT INTO dept VALUES(10,'研发部');
INSERT INTO dept VALUES(20,'市场部');
INSERT INTO dept VALUES(30,'运营部');
INSERT INTO dept VALUES(40,'测试部');
CREATE TABLE emp(
  eid INT PRIMARY KEY AUTO_INCREMENT,
  ename VARCHAR(8),
  sex BOOL DEFAULT 1,
  birthday DATE,
  salary DECIMAL(7,2),
  deptID INT,
  FOREIGN KEY(deptID) REFERENCES dept(did)
);
#插入数据至表emp
INSERT INTO emp VALUES(NULL,'张三',DEFAULT,'1996-01-01',12888,30);
INSERT INTO emp VALUES(NULL,'李四',DEFAULT,'1997-01-01',13888,20);
INSERT INTO emp VALUES(NULL,'王五',DEFAULT,'1998-01-01',14888,10);