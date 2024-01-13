Create Database AM_Healthcare;
Use AM_Healthcare;
Create Table Branch
(
Bcode varchar(50)  Primary Key,
City varchar(50),
Address varchar(50),
Manager varchar(50) Not Null
);
Create Table Tcategories
(
    Tid	INT Primary Key,
    Ttype VARCHAR(512),
    HOD_Name VARCHAR(512)
);
CREATE TABLE Patients 
(
    Pid	int Primary Key,
    Pname varchar(50),
    Mobile bigint,
    Bcode varchar(50),
    Tid int,
    Fees int,
    Foreign key (Tid) References Tcategories(Tid),
    Foreign key (Bcode) References Branch(Bcode)
);
CREATE TABLE Appointments 
(
    Aid	INT,
    Pid	INT,
    Tid	INT,
    Fvisit	VARCHAR(512),
    Adate	VARCHAR(512),
    foreign key (Pid) references patients (Pid),
    foreign key (Tid) references Tcategories (Tid)
);
INSERT INTO Branch VALUES
('M1011', 'Mumbai', '"Mulund station rd, East 05"', 'Punit Shah'),
('T1012', 'Thane', '"Naupada no. 1"', 'Mohan R'),
('P1013', 'Pune', '"Sarasbaug exit gate 2"', 'Waman Pai'),
('S1014', 'Satara', '"Jaoli-satara road, no. 10"', 'Raman R.'),
('K1015', 'Khopoli', '"Khopoli station rd, 1"', 'Jac Dcosta'),
('R1016', 'Raigad', '"Palghar road E01"', 'Tina Dabi'),
('D1017', 'Dombivli', '"Diva bypass exit no. 12"', 'M.Suman'),
('N1018', 'Nagar', '"Near Ahemadnagar Station no. 8"', 'R. Madhavan'),
('B1019', 'Belapur', '"sector 10, Near Station, 14"', 'Varun Sharma'); 
INSERT INTO Tcategories VALUES
(1001, 'Gaenocology', 'Suresh Aade'),
(1002, 'Orthopaedic', 'Sunita magar'),
(1003, 'Dental', 'Nilesh Shinde'),
(1004, 'Hairloss', 'Suraj Chavan'),
(1005, 'Cardiologist', 'Prakash Shende'),
(1006, 'Neurologist', 'Ritu Khemani'),
(1007, 'Physician', 'Monica M'),
(1008, 'Dietician', 'Siddh Jha'),
(1009, 'Hepatologist', 'Chatur R');

INSERT INTO Patients VALUES
(101, 'Sonal Sharma', 9876543210, 'M1011', 1005, 1000),
(102, 'Monica C', 9876543211, 'S1014', 1007, 300),
(103, 'Mohan Chandran', 9876543212, 'K1015', 1005, 1000),
(104, 'Radhika P', 9876543213, 'T1012', 1001, 500),
(105, 'C krishnan', 9876543214, 'R1016', 1002, 500),
(106, 'Verma rani', 9876543215, 'S1014', 1001, 500),
(107, 'T Gangopadhayay', 9876543216, 'R1016', 1006, 1200),
(108, 'Mozelle Isac', 9876543217, 'P1013', 1009, 1000),
(109, 'Sharat Kumar Arora', 9876543218, 'K1015', 1003, 500),
(110, 'Afifa Rahman', 9876543219, 'P1013', 1002, 400),
(111, 'Abdul Matin', 9876543220, 'S1014', 1004, 800),
(112, 'Yogesh Sharma', 9876543221, 'T1012', 1005, 1000),
(113, 'Mohit Bhatnagar', 7896541230, 'M1011', 1008, 600),
(114, 'Chanchal Agrawal', 7896541231, 'P1013', 1006, 1000),
(115, 'U Sharma', 7896541232, 'D1017', 1006, 1000),
(116, 'Avantika Srivastava', 7896541233, 'R1016', 1001, 500),
(117, 'Manisha Mane', 7896541234, 'K1015', 1001, 500),
(118, 'A Anandkar', 7896541235, 'B1019', 1007, 300),
(119, 'M R Dhot', 7896541236, 'N1018', 1006, 1000),
(120, 'Rajendra Marwade', 7896541237, 'D1017', 1003, 500),
(121, 'Swati Sanjay Surve', 7896541238, 'K1015', 1007, 300),
(122, 'PRAGYA PANDEY', 7896541239, 'T1012', 1005, 1000),
(123, 'Kanchalal R Patel', 8521479630, 'M1011', 1002, 500),
(124, 'Verma rani', 9876543215, 'S1014', 1004, 800),
(125, 'Abdul Matin', 9876543220, 'S1014', 1002, 400),
(126, 'Afifa Rahman', 9876543219, 'P1013', 1007, 300),
(127, 'Urmila A Thakar', 8521479631, 'R1016', 1001, 500),
(128, 'V Karnick', 8521479632, 'D1017', 1002, 500),
(129, 'Gita B Desai', 8521479633, 'N1018', 1004, 800),
(130, 'Pravin A Jani', 8521479634, 'K1015', 1008, 600),
(131, 'Vijayakumar J K', 8521479635, 'T1012', 1009, 1200),
(132, 'Upadhyay Purnima', 8521479636, 'M1011', 1001, 700),
(133, 'Sharmishtha Patel', 8521479637, 'R1016', 1007, 200),
(134, 'Laila Farzana', 8521479638, 'S1014', 1004, 1000),
(135, 'Aswani Kumar', 8521479639, 'P1013', 1008, 600),
(136, 'Ashaben Dave', 8521479640, 'B1019', 1005, 1000),
(137, 'Manisha Shah', 9654123078, 'D1017', 1009, 1000),
(138, 'Omveer Singh', 9654123077, 'R1016', 1003, 500),
(139, 'Om Prakash Singh', 9654123076, 'B1019', 1005, 1000),
(140, 'Oasis Basu', 9654123075, 'N1018', 1002, 500),
(141, 'Geeta Devi', 9654123074, 'S1014', 1003, 500),
(142, 'Gayathri Sen', 9654123073, 'T1012', 1001, 700),
(143, 'Gurmeet Kaur', 9654123072, 'K1015', 1005, 1000),
(144, 'Gayathri Devi', 9654123071, 'R1016', 1001, 700),
(145, 'Deepa Devi', 9654123070, 'B1019', 1009, 1200),
(146, 'Devaoas Bodugala', 9654123069, 'N1018', 1002, 500),
(147, 'Digvijai Singh', 9654123068, 'M1011', 1003, 500),
(148, 'Wipin Lilhare', 9654123067, 'S1014', 1006, 800),
(149, 'Wajih A Alvi', 9654123066, 'K1015', 1006, 1200),
(150, 'Wazir Singh Mour', 9654123065, 'P1013', 1006, 1200),
(151, 'Tejaswini R Joshi', 9654123064, 'T1012', 1008, 500),
(152, 'Manisha Shah', 9654123078, 'D1017', 1004, 700),
(153, 'Radhika P', 9876543213, 'T1012', 1007, 200),
(154, 'Manisha Shah', 9654123078, 'D1017', 1006, 800),
(155, 'Radhika P', 9876543213, 'T1012', 1008, 500),
(156, 'Mozelle Isac', 9876543217, 'P1013', 1002, 400),
(157, 'Mozelle Isac', 9876543217, 'P1013', 1007, 200),
(158, 'Sharmishtha Patel', 8521479637, 'R1016', 1002, 400),
(159, 'Wipin Lilhare', 9654123067, 'S1014', 1007, 200),
(160, 'Tejaswini R Joshi', 9654123064, 'T1012', 1001, 500);

select count(Tid) - count(distinct Tid) from Patients;


INSERT INTO Appointments VALUES
(5001, 110, 1002, now(), Date_add(Now(),Interval 18 day)),
(5002, 111, 1004, now(), Date_add(Now(),Interval 21 day)),
(5003, 133, 1007, now(), Date_add(Now(),Interval 45 day)),
(5004, 126, 1007, now(), Date_add(Now(),Interval 30 day)),
(5005, 137, 1009, now(), Date_add(Now(),Interval 30 day)),
(5006, 124, 1004, now(), Date_add(Now(),Interval 25 day)),
(5007, 135, 1008, now(), Date_add(Now(),Interval 90 day)),
(5008, 132, 1001, now(), Date_add(Now(),Interval 30 day)),
(5009, 139, 1005, now(), Date_add(Now(),Interval 30 day)),
(5010, 140, 1002, now(), Date_add(Now(),Interval 15 day)),
(5011, 129, 1004, now(), Date_add(Now(),Interval 10 day)),
(5012, 143, 1005, now(), Date_add(Now(),Interval 20 day)),
(5013, 147, 1003, now(), Date_add(Now(),Interval 90 day)),
(5014, 149, 1006, now(), Date_add(Now(),Interval 56 day)),
(5015, 148, 1006, now(), Date_add(Now(),Interval 50 day)),
(5016, 151, 1008, now(), Date_add(Now(),Interval 30 day)),
(5017, 152, 1004, now(), Date_add(Now(),Interval 25 day)),
(5018, 156, 1002, now(), Date_add(Now(),Interval 15 day)),
(5019, 158, 1002, now(), Date_add(Now(),Interval 21 day)),
(5020, 160, 1001, now(), Date_add(Now(),Interval 16 day));

truncate table Appointments;
Show Tables;



select * from Appointments order by adate;

/*1. Name of patients who has appointment on 4th nov for hairloss and ortho?*/
Select pname from patients;
Select Pname from patients join Appointments on patients.pid=Appointments.pid where Adate='2023-12-25 00:28:23';

Select Pname from patients join Tcategories on patients.Tid=Tcategories.Tid where Ttype='Hairloss' or Ttype='Orthopaedic';

select pname from patients join Appointments on patients.pid = Appointments.pid 
join Tcategories on Appointments.Tid=Tcategories.Tid where Adate=(Select Pname from patients join Appointments on patients.pid=Appointments.pid where Adate='2023-12-25 00:28:23');

/*3.What is the collection of every branch till date low to high amount?*/

Select City,sum(Fees) as Collection from Branch join patients on Branch.Bcode=patients.Bcode group by city order by sum(fees);
/*4.How many patients were dignosed in every location?*/
select City, count(Pname) as No_of_patients from patients join Branch on patients.Bcode=branch.Bcode 
group by City;

/*5. How many patients do not advised further revisits?*/

select pid from appointments;

select patients.pname from patients left join Appointments on patients.pid=Appointments.pid where Patients.pid not in (select pid from appointments);

update Appointments
set Tid=1001
where pid=133;

/*Name and fees for gaeno treatment for Raigad branch?*/
select adate,PID from Appointments where adate='2024-01-09 00:28:23';

Select pname, fees from patients p join Tcategories t 
on p.Tid=t.Tid join branch b on b.Bcode=p.Bcode
 where Ttype='Gaenocology' and b.bcode='R1016'; 


/*. Id’s of patients have appointments from 5th dec to 25th dec for 1001,1007 &1009 Treatment code for nagar branch*/
select p.pid, p.pname from patients p left join appointments a on p.pid=a.pid join branch b on p.bcode=b.bcode where Adate between '2023-12-05 00:28:23' and '2023-12-25 00:28:23' 
and city=(select city from branch where bcode='N1018');

select city from branch where bcode='P1013';

/*Need patients details for thane, pune, raigad and nagar branch*/

select * from patients p left join branch b on p.bcode=b.bcode where city in (select city from branch where city='Mumbai' or city= 'Raigad' or city= 'Pune' or city= 'Nagar');

select city from branch where city='Mumbai' or city= 'Raigad' or city= 'Pune' or city= 'Nagar';

/*10. Treatment name and mobile no. of patients whose mobile no starts with 9.*/

select Ttype, Mobile from Patients p join Tcategories t on p.Tid=t.Tid where Mobile like '9%';

/*Fees paid by each patient*/

Select pname, Sum(fees) from patients group by pname having sum(fees)>1000;

/* need appointment details of Belapur branch*/

select a.pid, b.bcode, pname, adate from appointments a join patients p on a.pid=p.pid join branch b on p.bcode=b.bcode where city='Belapur';

/*how many patients opted for more than 1 treatment?*/

Select pname, count(pname) as Patients from patients group by pname having count(pname) > 1 ;

/* name the patients have appointments came for Neurologist and DIetician in ascending order ny name?*/

Select Ttype from Tcategories where tid=1006 or tid=1008;

select pname, Ttype, adate from patients p join Tcategories t on p.tid=t.tid 
join appointments a on p.pid=a.pid 
where Ttype in (Select Ttype from Tcategories where tid=1006 or tid=1008) 
order by pname;

delete from patients
where Tid=1008;

/*TOtal collection of AM Healthcare*/

Select Sum(fees) as Total from patients;














