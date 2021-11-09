DROP DATABASE IF EXISTS testing_system_assignment_2;
CREATE DATABASE testing_system_assignment_2;
USE testing_system_assignment_2;
CREATE TABLE Department (
   Department_id      TINYINT PRIMARY KEY,
   Department_name     VARCHAR(50) NOT NULL
   );
 
 
CREATE TABLE `position` (
   position_id         TINYINT PRIMARY KEY,
   position_name       VARCHAR(50)
   );
   
DROP TABLE IF EXISTS `Account`;
CREATE TABLE `Account` (
   account_id          TINYINT PRIMARY KEY,
   email               VARCHAR(50) NOT NULL,
   username            VARCHAR(50) NOT NULL,
   fullname            VARCHAR(30) NOT NULL,
   Department_id       TINYINT,
   position_id         TINYINT,
   createdte           TINYINT,
	FOREIGN KEY (position_id) REFERENCES`position`(position_id),
   FOREIGN KEY (Department_id) REFERENCES Department(Department_id)
   );  


   CREATE TABLE `group`(
   group_id           TINYINT PRIMARY key,
   groupname          VARCHAR(50) NOT NULL,
   creator_id          TINYINT,
   createdate          DATE,
   FOREIGN KEY (creator_id) REFERENCES `Account`(account_id),
   );
   
   
   CREATE TABLE groupaccount(
   group_id            TINYINT PRIMARY key,
   account_id          TINYINT,
   joindate             DATE
   );
   
   FOREIGN KEY (account_id) REFERENCES `Account` (account_id),
   FOREIGN KEY (group_id) REFERENCES`group` (group_id)
   );
   
   CREATE TABLE typequestion(
   type_id             TINYINT PRIMARY KEY,
   typename            VARCHAR(50) NOT NULL
   ); 
   
   CREATE TABLE categoryquestion(
   question_id         TINYINT PRIMARY KEY,
   content             VARCHAR(500),
   category_id         TINYINT,
   type_id             TINYINT,
   create_id           TINYINT,
   createdate          DATE
   );
   FOREIGN KEY (
   CREATE TABLE answer(
   answer_id           TINYINT PRIMARY key,
   content             VARCHAR(500),
   question_id         TINYINT,
   iscorrect           VARCHAR(30)
   );
   
   CREATE TABLE exam (
   exam_id             TINYINT PRIMARY key,
   code                VARCHAR(20) NOT NULL,
   title               VARCHAR(50) NOT NULL,
   category_id         TINYINT NOT NULL,
   duration            TINYINT NOT NULL,
   create_id           TINYINT NOT NULL,
   createdate          DATE
   );
   
   CREATE TABLE examquestion(
   exam_id             TINYINT PRIMARY KEY,
   question_id         TINYINT
   );
   
   
   


   
   
   
   
   
   
 

