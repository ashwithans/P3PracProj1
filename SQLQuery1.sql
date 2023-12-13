create database P3PracProj1
use P3PracProj1

create table Subjects 
(
    subjectId int primary key identity(1, 1),
    subjectName nvarchar(50),
    TeacherName nvarchar(50)
)

create table Classes 
(
    ClassId int primary key identity(1, 1),
    ClassName nvarchar(50),
    ClassFloor int
)

create table Student
(
    RollNo int primary key identity(1, 1),
    studentName nvarchar(50),
    classId int foreign key references Classes(ClassId),
    subjectId int foreign key references Subjects(subjectId)
)

insert into Subjects (subjectName, TeacherName) values
('English', 'Prathiba'),
('Kannada', 'Suvarna'),
('Hindi', 'Shalini'),
('Mathematics', 'Sharmila'),
('Social Science', 'Shreesha'),
('Science', 'Rashmi')
select * from Subjects

insert into Classes (ClassName, ClassFloor) values
('Class 1', 0),
('Class 2', 0),
('Class 3', 1),
('Class 4', 1),
('Class 5', 2),
('Class 6', 2),
('Class 7', 2),
('Class 8', 3)
select * from Classes

insert into Student (studentName, classId, subjectId) values
('Prasad', 1, 5),
('Sharath', 1, 4),
('Abhishek', 2, 3),
('Vignesh', 8, 1),
('Ganesh', 7, 5),
('Karthik', 5, 3),
('Dixit', 6, 4),
('Laksh', 7, 2)
select * from Student



select * from Subjects
select * from Classes
select * from Student
