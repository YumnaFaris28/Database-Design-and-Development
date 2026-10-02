create table branch(
Branch_ID char (15) primary key,
BName varchar (50) not null)

Create table department(
Dep_ID char (10) primary key,
DName varchar (50) not null
)
 create table Instructor(
 Instruct_ID char(20) primary key,
 IName varchar(15) not null,
 Email varchar (50),
 Dep_ID char(10) ,
 foreign key (Dep_ID) references department  (Dep_ID))

 
 create table Course(
Course_ID char (15) primary key,
Title varchar (50) not null,
Credit_value int)

create table Semester (
Sem_ID char (10) primary key,
SEMName varchar (20) not null,
SEM_Year int )

create table student(
St_ID char (15) primary key,
STName varchar (20) not null,
enrollment_date varchar (50))

create table student_Address(
st_ID char (15) primary key,
address varchar (50) NOT NULL,
foreign key (st_ID) references student (St_ID))



Create table branch_department (
Branch_ID  char (15),
Dep_ID char (10),
Address varchar (50) not null,
foreign key (Branch_ID) references branch (Branch_ID),
foreign key (Dep_ID) references department (Dep_ID))

create table department_Course(
Dep_ID char (10),
Course_ID char (15),
Assignment_date date ,
foreign key (Dep_ID) references department (Dep_ID),
foreign key (Course_ID) references Course (Course_ID))

create table Instructor_Course(
Instruct_ID char (20),
Course_ID char (15),
Module varchar (50),
foreign key (Instruct_ID) references instructor (Instruct_ID),
foreign key (Course_ID) references Course (Course_ID))

create table student_Course(
St_ID char (15),
Course_ID char (15),
registration_date date 
foreign key (St_ID) references student (St_ID),
foreign key (Course_ID) references course (Course_ID))


Create table course_Semester(
Course_ID char (15),
Sem_ID char (10),
start_date date,
end_date date,
foreign key (Course_ID) references course (Course_ID),
foreign key (Sem_ID) references semester (Sem_ID))

create table student_Semester(
St_ID char (15),
Sem_ID char (10),
enrollment_id int,
foreign  key (St_ID) references student (St_ID),
foreign key (Sem_ID) references semester (Sem_ID))

insert into branch values
('B01','Kandy'),
('B02','Kandy'),
('B03','colombo'),
('B04','Kandy'),
('B05','nugegoda'),
('B06','nugegoda'),
('B07','nugegoda'),
('B08','colombo'),
('B09','Kandy'),
('B10','jaffna'),
('B11','Kandy'),
('B12','colombo'),
('B13','jafna'),
('B14','Kandy'),
('B15','gampaha')

insert into department values
('D101','Computer Science'),
('D102','Computer Science'),
('D103','Business'),
('D104','Engineering'),
('D105','Business'),
('D106','Business'),
('D107','Business'),
('D108','Business'),
('D109','Business'),
('D110','Business'),
('D111','Engineering'),
('D112','Business'),
('D113','Computer Science'),
('D114','Computer Science'),
('D115','Business')

insert into  Instructor values
('I01','nuski ','Nuski123@gmail.com','D119'),
('I02','yumna','Yumna25@gmail.com','D102'),
('I03','billu binthi','billubinthi13@gmail.com','D103'),
('I04','specs aj','aj77@gmail.com','D104'),
('I05','illukshan','ill85@gmail.com','D105'),
('I06','ajmal rizwan','Ajee35@gmail.com','D106'),
('I07','uzman badhusa','uzzi18@gmail.com','D107'),
('I08','hana binthi','hanahilmy166@gmail.com','D108'),
('I09','shaifa farhan','shaiff24@gmail.com','D109'),
('I10','ilma irshad','ilmairshad25@gmail.com','D110'),
('I11','nidhu enakshi','nidhu18@gmail.com','D111'),
('I12','mayurini','Mayurinii25@gmail.com','D112'),
('I13','songul','Songull2009@gmail.com','D113'),
('I14','lakshith','Late5002@gmail.com','D114'),
('I15','Nisal','nisaal2290@gmail.com','D115')

insert into  course values 
('c1',' pp','ABC'),
('c2',' PP',15),
('c3',' BIS',10),
('c4',' BIS',20),
('c5',' pp',15),
('c6',' pp',25),
('c7',' BIS',15),
('c8',' pp',15),
('c9',' CN',15),
('c10',' CN',30),
('c11',' pp',30),
('c12',' pp',15),
('c13',' CA',15),
('c14',' CA',15),
('c15','PP',25)

insert into  Student values
('ST01','Asma',2025-05-11),
('ST02','Aadhila',2025-05-10),
('ST03','Aashika',2025-05-26),
('ST04','Aneesha',2025-05-28),
('ST05','Azeem',2025-04-10),
('ST06','yumna',2025-04-04),
('ST07','Athiya',2025-04-19),
('ST08','reemah',2025-04-19),
('ST09','rahna',2025-04-11),
('ST10','raaid',2025-04-15),
('ST11','imam',2025-04-19),
('ST12','zeinab',2025-04-09),
('ST13','Ammar',2025-04-25),
('ST14','shuaib',2025-03-30),
('ST15','mahmooth',2025-03-28)

insert into  Semester  values
('SEM1',' Summer',2023),
('SEM2',' Summer',2023),
('SEM3',' Spring',2024),
('SEM4',' Spring',2024),
('SEM5',' Summer',2024),
('SEM6',' fall',2024),
('SEM7',' Summer',2025),
('SEM8',' fall',2025),
('SEM9',' fall',2025),
('SEM10',' Summer',2025),
('SEM11',' Summer',2023),
('SEM12',' Spring',2022),
('SEM13',' Spring',2023),
('SEM14',' Spring',2022),
('SEM15',' Summer',2022)


insert into  Student_Address  values
('ST01','123 Galle Road, Colombo 03'),
('ST02','45 Park Street, Kandy 20000'),
('ST03','78 Temple Road, Anuradhapura'),
('ST04','12 Marine Drive, Galle 80000'),
('ST05','34 Trincomalee Street, Jaffna 40000'),
('ST06','56 Negombo Road, Kurunegala 60000'),
('ST07','90 Matara Road, Rathnapura 70000'),
('ST08','23 Badulla Main Street, Badulla 90000'),
('ST09','67 Kalutara Road, Panadura 12500'),
('ST10','14 Polonnaruwa Street, Dambulla 21100'),
('ST11','89 Chilaw Road, Puttalam 61300'),
('ST12','31 Nuwara Eliya Road, Hatton 22000'),
('ST13','44 Batticaloa Road, Ampara 32000'),
('ST14','22 Hambantota Road, Monaragala 91000'),
('ST15','11 Kegalle Road, Matale 21000')

insert into branch_department values
('B01', 'D101', '123 Central Road, Kandy'),
('B02', 'D102', '123 Central Road, Kandy'),
('B03', 'D103', '123 central road, Kandy'),
('B04', 'D104', '789 Business Street, Colombo'),
('B05', 'D105', '789 Business Street, Colombo'),
('B06', 'D106', '123 central road, Kandy'),
('B07', 'D107', '555 Main Avenue, Nugegoda'),
('B08', 'D108', '555 Main Avenue,Nugegoda'),
('B09', 'D109', '555 Main Avenue,, Nugegoda'),
('B10', 'D110', '789 Business Street, Colombo'),
('B11', 'D111', '123 Central Road, Kandy'),
('B12', 'D112', '333 Northern Blvd, Jaffna'),
('B13', 'D113', '444 University Road, Kandy'),
('B14', 'D114', '789 Business Street, Colombo'),
('B15', 'D115', '333 Northern Blvd, Jaffna')

insert into department_Course values
('D101', 'c1', '2024-01-15'),
('D102', 'c2', '2024-02-10'),
('D103', 'c3', '2024-01-20'),
('D104', 'c4', '2024-03-05'),
('D105', 'c5', '2024-02-28'),
('D106', 'c6', '2024-03-12'),
('D107', 'c7', '2024-01-30'),
('D108', 'c8', '2024-02-15'),
('D109', 'c9', '2024-03-01'),
('D110', 'c10', '2024-02-20'),
('D111', 'c11', '2024-03-10'),
('D112', 'c12', '2024-01-25'),
('D113', 'c13', '2024-02-05'),
('D114', 'c14', '2024-03-15'),
('D115', 'c15', '2024-02-25')
insert into Instructor_Course values
('I01', 'c1', 'PP - Module 1: professional life'),
('I02', 'c1', 'PP - Module 1:professional life '),
('I03', 'c2', 'CN - Module 1: Networking Basics'),
('I04', 'c3', 'BIS - Module 1: Introduction to BIS'),
('I05', 'c4', 'BIS - Module 2: Business Analysis'),
('I06', 'c5', 'PP - Module 2: ethics in ict'),
('I07', 'c6', 'PP - Module 3: computer ethics'),
('I08', 'c7', 'BIS - Module 3: Business Intelligence'),
('I09', 'c8', 'PP - Module 4: leadership'),
('I10', 'c9', 'CN - Module 2: Network Security'),
('I11', 'c10', 'CN - Module 3: Advanced Networking'),
('I12', 'c11', 'PP - Module 5: motivation'),
('I13', 'c12', 'PP - Module 6: Final Project'),
('I14', 'c13', 'CA - Module 1: Computer Architecture'),
('I15', 'c14', 'CA - Module 2: secondary software')

insert into student_Course values 
('ST01', 'c1', '2025-05-11'),
('ST02', 'c2', '2025-05-10'),
('ST03', 'c3', '2025-05-26'),
('ST04', 'c4', '2025-05-28'),
('ST05', 'c5', '2025-04-10'),
('ST06', 'c6', '2025-04-04'),
('ST07', 'c7', '2025-04-19'),
('ST08', 'c8', '2025-04-19'),
('ST09', 'c9', '2025-04-11'),
('ST10', 'c10', '2025-04-15'),
('ST11', 'c11', '2025-04-19'),
('ST12', 'c12', '2025-04-09'),
('ST13', 'c13', '2025-04-25'),
('ST14', 'c14', '2025-03-30'),
('ST15', 'c15', '2025-03-28')
 
insert into course_Semester values
('c1', 'SEM1', '2023-06-01', '2023-08-15'),
('c2', 'SEM2', '2023-06-10', '2023-08-20'),
('c3', 'SEM3', '2024-01-15', '2024-04-30'),
('c4', 'SEM4', '2024-01-20', '2024-05-10'),
('c5', 'SEM5', '2024-06-01', '2024-08-25'),
('c6', 'SEM6', '2024-09-05', '2024-12-20'),
('c7', 'SEM7', '2025-06-01', '2025-08-15'),
('c8', 'SEM8', '2025-09-10', '2025-12-15'),
('c9', 'SEM9', '2025-09-15', '2025-12-20'),
('c10', 'SEM10', '2025-06-05', '2025-08-25'),
('c11', 'SEM11', '2023-06-15', '2023-08-30'),
('c12', 'SEM12', '2022-01-10', '2022-04-25'),
('c13', 'SEM13', '2023-01-15', '2023-04-30'),
('c14', 'SEM14', '2022-01-20', '2022-05-05'),
('c15', 'SEM15', '2022-06-01', '2022-08-20')



insert into student_Semester values
('ST01', 'SEM1', 1001),
('ST02', 'SEM2', 1002),
('ST03', 'SEM3', 1003),
('ST04', 'SEM4', 1004),
('ST05', 'SEM5', 1005),
('ST06', 'SEM6', 1006),
('ST07', 'SEM7', 1007),
('ST08', 'SEM8', 1008),
('ST09', 'SEM9', 1009),
('ST10', 'SEM10', 1010),
('ST11', 'SEM11', 1011),
('ST12', 'SEM12', 1012),
('ST13', 'SEM13', 1013),
('ST14', 'SEM14', 1014),
('ST15', 'SEM15', 1015)

--question 5 a
select * from Course

-- question 5 b
SELECT s.St_ID, s.STName
FROM Student s
WHERE s.St_ID IN (
    SELECT sc.St_ID
    FROM Student_Course sc
    WHERE sc.Course_ID IN (
        SELECT dc.Course_ID
        FROM Department_Course dc
        INNER JOIN Department d ON dc.Dep_ID = d.Dep_ID
        WHERE d.DName = 'Computer Science'
    ))
--question 5 c
SELECT c.Course_ID, c.Title AS Course_Name, i.IName AS Instructor_Name
FROM Course c
INNER JOIN Instructor_Course ic ON c.Course_ID = ic.Course_ID
INNER JOIN Instructor i ON ic.Instruct_ID = i.Instruct_ID
ORDER BY c.Course_ID

--question 5 d
SELECT c.Course_ID, c.Title AS Course_Name, COUNT(sc.St_ID) AS Student_Count
FROM Course c
LEFT OUTER JOIN Student_Course sc ON c.Course_ID = sc.Course_ID
GROUP BY c.Course_ID, c.Title
ORDER BY Student_Count DESC

--question 5 e
SELECT s.St_ID, s.STName
FROM Student s
WHERE (
		SELECT COUNT(sc.Course_ID)
		FROM Student_Course sc
		WHERE sc.St_ID = s.St_ID
                                AND sc.Course_ID IN (
									SELECT dc.Course_ID
									FROM Department_Course dc
									INNER JOIN Department d ON dc.Dep_ID = d.Dep_ID
									WHERE d.DName = 'IT'
)) = (
    
    SELECT COUNT(dc.Course_ID)
    FROM Department_Course dc
    INNER JOIN Department d ON dc.Dep_ID = d.Dep_ID
    WHERE d.DName = 'IT')