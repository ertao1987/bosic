drop table users;
drop table students;

drop sequence USERS_SEQ;
drop sequence STUDENTS_SEQ;

create table users
(
       id         number(11, 0) not null,
       username   varchar2(30),
       password   varchar2(30),
       
       constraint pk_users   primary key(id)
);

create sequence USERS_SEQ
start with 1
increment by 1
cache 10;

create table students
(
       id             number(11, 0) not null,
       student_number varchar2(30),
       student_name   varchar2(30),
       gender         varchar2(5),
       birthday       date,
       email          varchar2(30),
       mobile         varchar2(11),
       address        varchar2(256),
       city           varchar2(50),
       province       varchar2(50),
       
       constraint     pk_students       primary key(id)
);

create sequence STUDENTS_SEQ
start with 1
increment by 1
cache 10;

INSERT INTO USERS(ID, USERNAME, PASSWORD) VALUES(USERS_SEQ.NEXTVAL, 'admin', '12345');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
INSERT INTO STUDENTS(ID, STUDENT_NUMBER, STUDENT_NAME, GENDER, BIRTHDAY, EMAIL, MOBILE, ADDRESS, CITY, PROVINCE) VALUES(STUDENTS_SEQ.NEXTVAL, '101', '张三', '男', to_date('2000-02-14','yyyy-mm-dd'), 'zhangsan@163.com', '138------', '健康路', '郑州', '河南省');
commit;