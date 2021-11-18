USE Testing_System_Assignment_03;
       --- 2 lấy ra tất cả các phòng ban

SELECT* FROM department;
	   ---3 lấy ra id của phòng ban sale

SELECT Department_id FROM department
WHERE Department_Name="sale";
       ---4 lấy ra thông tin account có fullname
SELECT * FROM `Account`
WHERE LENGTH(Fullname)=(SELECT MAX(LENGTH(Fullname)) FROM `Account`)
ORDER BY Fullname DESC;
       --- 5lấy ra thông tin account có fullname dài nhất và thuộc phòng ban có id=3
 DROP PROCEDURE IF EXISTS longest_name;
 DELIMITER $$ 
 CREATE PROCEDURE longest_name(IN dept_id TINYINT,OUT longest_name VACHAR(50))
 BEGIN 
   SELECT Fullname INTO longest_name
   FROM `Account`
   WHERE LENGTH(Fullname)=(SELECT MAX(LENGTH(Fullname))
   FROM `Account`
   WHERE Department_id=dept_id;
   END$$
   DELIMITER;
 

`