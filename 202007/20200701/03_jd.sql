#�������ݿ�jd���������
DROP DATABASE IF EXISTS jd;
#�������ݿ�jd
CREATE DATABASE jd;
#�������ݿ�jd
USE jd;
#�����������ݵı�
CREATE TABLE student(
  sid INT, #intΪ����
  name VARCHAR(8), #varcharΪ�ַ���������ָ������
  sex VARCHAR(1),
  score INT
);
#��������
INSERT INTO student VALUES('1','ran','b','59');
INSERT INTO student VALUES('2','Ȼ��','g','59.5');
#��ѯ����
SELECT * FROM student;