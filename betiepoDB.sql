# projectprojectprojectprojectDROP TABLE project;
# DROP TABLE member;


CREATE TABLE betiepo.member (
  name NVARCHAR(20) NOT NULL,
  email VARCHAR(50) NOT NULL,
  pw VARCHAR(20) NOT NULL,
  PRIMARY KEY (email))
  ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE project (
   userEmail varchar(50) NOT NULL,
   projectId int(7) NOT NULL AUTO_INCREMENT,
   title varchar(45) NOT NULL,
   genre varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
   startDate datetime DEFAULT NULL,
   endDate datetime DEFAULT CURRENT_TIMESTAMP,
   language varchar(45) DEFAULT NULL,
   charge varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
   github varchar(50) DEFAULT NULL,
   memo varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
   explanation varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
   image mediumblob,
   purpose varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
   target varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
   scenario varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
   design1 mediumblob,
   design2 mediumblob,
   design3 mediumblob,
   implementImg mediumblob,
   implementExp varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
   completeImg mediumblob,
   study varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
   problem varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
   realization varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
   PRIMARY KEY (projectId)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO betiepo.member(name, email, pw) values ('han', 'han@naver.com', '1234');

insert into betiepo.project(userEmail, title) values('han@naver.com', 'hello');
insert into betiepo.project(userEmail, title) values('wan@naver.com', 'hello');
insert into betiepo.project(userEmail, title) values('qan@naver.com', 'hello');
insert into betiepo.project(userEmail, title) values('gan@naver.com', 'hello');

select * from betiepo.project;