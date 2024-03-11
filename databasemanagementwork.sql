CREATE DATABASE FEESMANAGEMENT;
USE FEESMANAGEMENT;
CREATE TABLE Student (
student_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(30),
last_name VARCHAR(35),
date_of_birth DATE,
gender VARCHAR(6),
class_id INT,
admission_date DATETIME
);
INSERT INTO Student (first_name, last_name, date_of_birth, gender, class_id, admission_date )
VALUES
('Riddhi', 'Patel', '1819-05-10', 'female', 1, now()),
('Ainemembazi', 'Catherine', '2006-02-15', 'Female', 2, now()),
('Taylor', 'Miller', '2005-08-20', 'Male', 1, now()),
('Emily', 'Brown', '2006-11-25', 'Female',2, now()),
('Daniel', 'Anderson', '2005-03-30', 'Male',  1, now()),
('Mary', 'Jean', '2006-07-05', 'Female', 2, now()),
('James', 'Miller', '2005-09-12', 'Male',  1, now()),
('Olivia', 'Wilson', '2006-04-18', 'Female', 2, now()),
('Matthew', 'Taylor', '2005-12-03', 'Male',  1, now()),
('Emma', 'Anderson', '2006-06-08', 'Female',  2, now());
CREATE TABLE Class (
class_id INT PRIMARY KEY AUTO_INCREMENT,
class_name VARCHAR(20),
class_teacher VARCHAR(30),
total_students INT,
class_fee INT
);
INSERT INTO Class (class_name,class_teacher, total_students,class_fee)
VALUES
('s1', 'Cathy', 60, 350000 ),
('s2', ' Smith',55,350000),
('s3', ' Riddhi',55,350000),
('s4', ' John',55,400000),
('s5', ' Smith',55,4000000),
('s6', ' Mary',55,450000);
CREATE TABLE Fee (
fee_id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT,
fee_type VARCHAR(50),
amount INT,
payment_date DATETIME,
payment_method VARCHAR(50),
payment_status VARCHAR(20)
);
INSERT INTO Fee (student_id, fee_type, amount, payment_date, payment_method, payment_status)
VALUES
(1, 'Tuition Fee', 350000, now(), 'cash', 'Paid'),
(2, 'Tuition Fee',  350000, now(), 'Cash', 'Paid'),
(3, 'Tuition Fee',  350000 ,now(), 'Bank Transfer', 'Paid'),
(4, 'Tuition Fee',  350000, now(), 'Credit Card', 'Paid'),
(5, 'Tuition Fee',  350000, now(), 'Cash', 'Paid'),
(6, 'Tuition Fee', 350000, now(), 'Bank Transfer', 'Paid'),
(7, 'Tuition Fee',  350000, now(), 'Credit Card', 'Paid'),
(8, 'Tuition Fee',  350000, now(), 'Cash', 'Paid'),
(9, 'Tuition Fee',  350000, now(), 'Bank Transfer', 'Paid'),
(10, 'Tuition Fee',  350000, now(), 'Credit Card', 'Paid');
CREATE TABLE Teacher (
teacher_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50),
last_name VARCHAR(50),
date_of_birth DATE,
gender VARCHAR(6),
contact_number VARCHAR(15),
qualification VARCHAR(100),
joining_date DATE
);
INSERT INTO Teacher (first_name, last_name, date_of_birth, gender,contact_number, qualification, joining_date)
VALUES
('Sarah', 'Johnson', '1980-03-15', 'Female', '1234567890', 'B.Ed', '2010-08-01'),
('John', 'Smith', '1975-06-20', 'Male', '9876543210', 'M.A', '2005-09-01'),
('Mary', 'Jean', '1980-03-15', 'Female', '1234567890', 'B.Ed', '2010-08-01'),
('Will', '', 'Smith', 'Male', '9876543210', 'M.A', '2005-09-01'),
('Jane', 'kate', '1980-03-15', 'Female', '1234567890', 'B.Ed', '2010-08-01'),
('John', 'Smith', '1975-06-20', 'Male', '9876543210', 'M.A', '2005-09-01');
CREATE TABLE Subject (
subject_id INT PRIMARY KEY AUTO_INCREMENT,
subject_name VARCHAR(50),
class_id INT,
teacher_id INT,
FOREIGN KEY (class_id) REFERENCES Classes(class_id),
FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id)
);
INSERT INTO Subject (subject_name, class_id, teacher_id)
VALUES
('Mathematics', 1, 1),
('Science', 2, 1),
('Geography', 3,4),
('English', 4, 5),
('History', 5, 6),
('Art', 6, 8),
('Physics', 2,4),
('English', 2, 5);
CREATE TABLE Payment (
payment_id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT,
amount DECIMAL(10,2),
payment_date DATE,
payment_method VARCHAR(50),
FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
INSERT INTO Payment (student_id, amount, payment_date, payment_method) VALUES
(1, 350000, '2024-03-10','cash'),
(11, 350000, '2024-03-10','cash'),
(6, 450000, '2024-03-10','cash'),
(8, 350000, '2024-03-10','cash'),
(5, 350000, '2024-03-10','cash'),
(3, 400000, '2024-03-10','cash'),
(9, 350000, '2024-03-10','cash'),
(4, 350000, '2024-03-10','cash');
CREATE TABLE FeesStructure (
feetype VARCHAR(30),
class_id INT,
fee_amount INT,
FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);
INSERT INTO FeesStructure (feetype,class_id, fee_amount) VALUES 
('boarding',2,200000),
('Tution',2,300000),
('boarding',7,200000),
('boarding',2,200000),
('Tution',2,300000),
('boarding',8,200000),
('boarding',9,200000),
('boarding',10,200000);
CREATE TABLE Attendance (
student_id INT,
date DATE,
status VARCHAR(20),
FOREIGN KEY (student_id) REFERENCES Students(student_id));
INSERT INTO Attendance (student_id, date, status) VALUES
(1, '2024-03-01', 'Present'),
(2, '2024-03-01', 'Present'),
(3, '2024-03-01', 'Present'),
(4, '2024-03-01', 'Present'),
(5, '2024-03-01', 'Absent'),
(6, '2024-03-01', 'Present'),
(7, '2024-03-01', 'Present'),
(8, '2024-03-01', 'Present'),
(9, '2024-03-01', 'Present'),
(10, '2024-03-01', 'Present');

DESC student;
SELECT * FROM student;



    
    
