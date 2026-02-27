create database firstbatchesdb;
show databases;
use firstdb;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    First_name VARCHAR(15) NOT NULL,
    Last_name VARCHAR(15) NOT NULL,
    Contact_number BIGINT NOT NULL
);

CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    fees DECIMAL(10,2)
);


CREATE TABLE batches (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    startdate DATE,
    duration INT,
    courseid INT,
    CONSTRAINT fk_course
        FOREIGN KEY (courseid)
        REFERENCES courses(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


insert into students  ( First_name , Last_name, Contact_number) values ("Jay" , "Bangar" , 7217540228);
insert into students  ( First_name , Last_name, Contact_number) values ("Vipul" , "Roy" , 7219540228);
insert into students  ( First_name , Last_name, Contact_number) values ("Tanvi" , "Sona" , 7218549228);
insert into students  ( First_name , Last_name, Contact_number) values ("Maya" , "Borhade" , 7216540228);
insert into students  ( First_name , Last_name, Contact_number) values ("Riddhi" , "Jadhav" , 7268540228);
insert into students  ( First_name , Last_name, Contact_number) values ("Sarthak" , "Kadam" , 7218549228);
insert into students  ( First_name , Last_name, Contact_number) values ("Vidya" , "Borse" , 7218547228);
insert into students  ( First_name , Last_name, Contact_number) values ("Vidya" , "Balan" , 7218547228);
insert into students  ( First_name , Last_name, Contact_number) values ("Jay" , "Tambade" , 7218547228);



INSERT INTO courses (name, fees) VALUES
('Full Stack Development', 45000.00),
('Data Science', 60000.00),
('Java Programming', 30000.00),
('Web Designing', 25000.00);


INSERT INTO batches (name, startdate, duration, courseid) VALUES
('FSD Jan 2026', '2026-01-15', 6, 1),
('Data Science Feb 2026', '2026-02-01', 8, 2),
('Java Mar 2026', '2026-03-10', 4, 3),
('Web Design Apr 2026', '2026-04-05', 3, 4),
('FSD May 2026', '2026-05-20', 6, 1);


select * from students;
drop table students;
show tables;


select * from students;
select First_name, Contact_number from students;
select count(*) from students;

select * from students where
First_name ="Vidya";

update students set Contact_number =9881735801  where First_name = "Vidya"  and Last_name="Balan";
delete from students  where id=9;