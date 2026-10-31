CREATE database transaction;
USE transaction;

CREATE TABLE payment 
(customer_id  INT UNIQUE, 
customer varchar (40), 
mode varchar(70),
city varchar(90) );


INSERT INTO payment (customer_id, customer, mode, city)
VALUES('101','Deepak','Netbanking','delhi'),
('102','ranjit','Credit Card','Mumbai'),
('104','tremor','Credit Card','Portland'),
('105','Oilver','Debit Card','los angles'),
('106','retorn','netbanking','france'),
('108','vikron','Credit card','delhi');

ALTER TABLE payment
ADD COLUMN Grade varchar(20);


UPDATE Student SET grade= 'A' Where customer_id=102;
UPDATE  Student SET grade= 'B' Where customer_id  =104;
UPDATE Student SET grade= 'D' Where customer_id =105;
UPDATE Student SET grade= 'E' Where customer_id =106;
UPDATE Student SET grade= 'C' Where customer_id =108;

UPDATE Student SET grade= 'A' Where customer_id=101;


select city, count(grade)
from payment
GROUP BY city;

select count(customer)
from payment;

select max(grade)
from payment;



select * FROM  Student;

ALTER TABLE payment 
RENAME to Student;

ALTER TABLE Student
ADD COLUMN Marks INT;

UPDATE Student SET Marks= 76 Where customer_id=102;
UPDATE  Student SET marks= 85 Where customer_id  =104;
UPDATE Student SET marks= 92 Where customer_id =105;
UPDATE Student SET marks= 98 Where customer_id =106;
UPDATE Student SET marks= 96 Where customer_id =108;

UPDATE Student SET marks= 70 Where customer_id=101;

select mode, avg(marks)
FROM Student
GROUP BY mode 
HAVING avg (marks)>80;

select city, count(customer_id) AS total_students
FROM Student
GROUP BY city
HAVING COUNT(customer_id) >1;

select grade, max(marks) as maximum_marks
FROM Student
GROUP BY Grade
HAVING max(marks)>=80;


select * from Student;

select mode, avg(marks) AS payment_mode
FROM Student
GROUP BY mode
HAVING avg(marks)>80;

select city, count(customer_id) AS total_students
FROM Student
GROUP BY city
HAVING count(customer_id)>1;

select grade, max(marks) AS maximum_marks
FROM Student
GROUP by grade
HAVING max(marks)>=85;

select grade, sum(marks) AS max_marks
FROM Student
GROUP BY GRADE
HAVING sum(marks)>=140;


select mode,min(marks) AS min_marks
FROM Student
GROUP BY mode
HAVING min(marks)>75;

select city, avg(marks) as display_city
FROM Student
GROUP BY city
HAVING avg(marks)<=85;

select mode, count(customer_id) as total_student
FROM Student
GROUP BY mode
HAVING count(customer_id)>=2;


select city,sum(marks)
FROM Student
GROUP BY city
HAVING sum(marks)>100;


select city, count(marks)
FROM Student
WHERE marks>70
GROUP BY city
HAVING count(customer_id)>1;

select mode, avg(marks)
FROM Student
WHERE Grade IN ('A','B')
GROUP BY mode
HAVING AVG(marks)>80;


select city, avg(marks)
FROM Student
WHERE marks>70
GROUP BY city
HAVING avg(marks)>85;

select mode, min(marks) AS min_marks,count(customer_id)
FROM Student
GROUP BY mode
HAVING min(marks)>70 AND count(customer_id)>1;

Select Grade, (max(marks)-min(marks)) AS marks_range
FROM Student
GROUP BY Grade
HAVING (max(marks)-min(marks))>10;

select * FROM Student;
select mode,avg(marks)
FROM Student
WHERE customer NOT LIKE 'R%' AND customer NOT LIKE 'r%'
GROUP BY mode 
HAVING avg(marks) >75;


select city,sum(marks) 
FROM Student
GROUP BY city
HAVING SUM(marks)>150 OR COUNT(customer_id)>=2;


Select Grade,avg(marks) 
FROM Student
WHERE City IN ('Delhi','Mumbai')
GROUP BY Grade
HAVING avg(marks)>75;

Select mode, sum(marks) AS total_sum , max(marks) AS max_marks
FROM Student
GROUP BY mode
HAVING sum(marks)>150 AND max(marks)>90;


select * FROM Student;

select grade , count(customer_id) AS STUDENT_count
FROM Student
WHERE marks BETWEEN 70 AND 95
GROUP BY Grade
HAVING count(customer)>1;

select city,sum(marks) AS Students_marks
FROM Student
WHERE customer <>'Deepak'
GROUP BY city
HAVING sum(marks)>150 AND avg(marks)>=80;

select mode,count(customer) AS total_student,max(marks) AS max_marks , AVG(marks) AS avg_marks
FROM Student
GROUP BY mode
HAVING count(customer)>1 AND max(marks) - Avg(marks)>10;

select Grade,Avg(marks) AS Student_score,count(customer) AS customer_score
FROM Student
WHERE marks between 60 and 95
GROUP BY grade
HAVING avg(marks)>75 AND count(customer)>=1;

SELECT mode,sum(marks) AS total_marks
FROM Student
GROUP by mode
HAVING sum(marks)>150;

select city, avg(marks) AS avg_students
FROM Student
WHERE marks >=75
GROUP by city
HAVING avg(marks)>80;


select mode, max(marks) AS max_marks
FROM Student
WHERE customer NOT LIKE 'R%' AND Customer NOT LIKE 'r%'
GROUP BY mode ,customer
HAVING max(marks)>90;

select * FROM Student;


select Grade, count(customer_id) AS high_score
FROM student
WHERE marks>70
GROUP BY grade
HAVING Count(customer_id)=1;


select mode, sum(marks) AS Total_marks
FROM Student
WHERE city IN ('delhi' , 'Mumbai')
GROUP by mode
HAVING sum(marks)>140;

select city, MIN(marks) AS min_marks
FROM Student
GROUP BY city
HAVING MIN(marks) >75;


select mode, avg(marks) 
FROM Student 
WHERE grade IN ('A' , 'B','C')
GROUP BY mode
HAVING avg(marks)>80;

select grade,avg(marks) AS not_city
FROM Student
WHERE city <>'delhi'
GROUP BY grade 
HAVING avg(marks)>85;

select mode,sum(marks) AS total_marks ,count(customer_id) AS student_count
FROM Student
GROUP BY mode
HAVING sum(marks)>100 AND count(customer)>1;

select mode ,avg(marks) AS Students_grade
FROM Student
WHERE grade IN ('A','B','C')
GROUP BY mode
HAVING avg(marks)>80;


select city ,min(marks) AS city_marks
FROM Student
GROUP BY city 
HAVING min(marks)>75;


select mode,sum(marks) AS total_sum
FROM Student 
WHERE city IN ('Delhi','Mumbai')
GROUP BY mode
HAVING sum(marks)>140;

select grade,  count(customer_id) AS student_marks
FROM Student
WHERE marks>70
GROUP BY grade
HAVING count(customer_id)=1;

create table name
(student varchar(20),
marks INT PRIMARY KEY,
grade varchar(20)

);


INSERT INTO name (student,marks,grade)
VALUES 
('kishan','30','B'),
('ritu','54','C'),
('Deepak','90','A');

select * FROM name;

ALTER TABLE name
CHANGE COLUMN student Full_name varchar(20);


ALTER TABLE name
DROP COLUMN grade;

DELETE FROM name
WHERE marks>80;

TRUNCATE TABLE name;


DROP TABLE name;



CREATE TABLE joins
(student_id INT ,
name varchar(20)
);

INSERT INTO joins(
student_id,name
)

VALUES ('101','ritesh'),
('104','Kushal'),
('108','Monica');

CREATE TABLE courses
(student_id INT ,
name varchar(20)
);

INSERT INTO courses(
student_id,name
)

VALUES ('106','math'),
('104','Hindi'),
('108','english');

select * FROM joins;

ALTER TABLE courses
CHANGE COLUMN  name  course varchar(30);

USE joins;
-- INNER JOIN

SELECT * FROM joins
INNER JOIN courses
ON joins.student_id = courses.student_ID;

select * FROM Joins AS a
LEFT JOIN courses AS b
ON a.student_id=b.student_id
UNION
select * FROM Joins AS a
RIGHT JOIN courses AS b
ON a.student_id=b.student_id;


