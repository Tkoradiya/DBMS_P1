DROP TABLE IF EXISTS `course`;

CREATE TABLE course (course_id INTEGER PRIMARY KEY AUTOINCREMENT,
        course_code integer NULL,
		course_name string NOT NULL,
		credit integer null,
                     dept_id integer NULL,
                         FOREIGN KEY (dept_id) 
      REFERENCES department (dept_id) 
         ON DELETE CASCADE 
         ON UPDATE NO ACTION
        
		);

INSERT INTO `course` (`course_id`,`course_name`,`course_code`,`credit`,`dept_id`)
VALUES
  (1,"statistics",1264,30,1),
  (2,"cs",1264,30,1),
  (3,"cs",56532,21,2),
  (4,"maths",56532,21,2),
  (5,"statistics",7985431,33,3),
  (6,"cs",7985431,33,3),
  (7,"maths",26253,23,4),
  (8,"cs",26253,23,4),
  (9,"statistics",1563132,32,5),
  (10,"statistics",1563132,32,5);
INSERT INTO `course` (`course_id`,`course_name`,`course_code`,`credit`,`dept_id`)
VALUES
  (11,"cs",46556,30,6),
  (12,"cs",46556,30,6),
  (13,"statistics",1264,21,7),
  (14,"statistics",1264,21,7),
  (15,"maths",56532,33,8),
  (16,"statistics",56532,33,8),
  (17,"maths",7985431,23,9),
  (18,"maths",7985431,23,9),
  (19,"maths",26253,32,10),
  (20,"statistics",26253,32,10);



DROP TABLE IF EXISTS `department`;

CREATE TABLE department (dept_id INTEGER PRIMARY KEY AUTOINCREMENT,
		dept_name string NOT NULL           
        
		);

INSERT INTO `department` (`dept_id`,`dept_name`)
VALUES
  (1,"mathematics"),
  (2,"analysis"),
  (3,"computer graphics"),
  (4,"cuber security"),
  (5,"analysis"),
  (6,"analysis"),
  (7,"cuber security"),
  (8,"cuber security"),
  (9,"computer graphics"),
  (10,"mathematics");
INSERT INTO `department` (`dept_id`,`dept_name`)
VALUES
  (11,"physics"),
  (12,"analysis"),
  (13,"cuber security"),
  (14,"mathematics"),
  (15,"cuber security"),
  (16,"cuber security"),
  (17,"cuber security"),
  (18,"cuber security"),
  (19,"physics"),
  (20,"computer graphics");


DROP TABLE IF EXISTS `student`;

CREATE TABLE student (student_id INTEGER PRIMARY KEY AUTOINCREMENT,
		fname string NOT NULL,
		lname string null,
        city string null ,
                      age integer NULL,
                      address text NULL,
                      email string NOT NULL,
                      mobile_no integer NULL
		);

INSERT INTO student (student_id,fname,lname,email,city,age,address,mobile_no)
VALUES
  (1,"Yoko Hart","Carlos Sawyer","nunc.lectus@outlook.org","Konstanz",20,"Ap #703-8588 A, St.","1-586-344-3167"),
  (2,"Hope Chaney","Jamal Bartlett","nisi.cum@aol.net","Ilesa",20,"Ap #402-1461 Congue. Ave","1-542-763-4764"),
  (3,"Nichole Reyes","Kyla Wyatt","sollicitudin.commodo@hotmail.net","Jurong East",25,"7905 Non Road","(554) 460-7423"),
  (4,"Nehru Cameron","Venus Colon","malesuada.vel.convallis@hotmail.couk","Wolfsberg",25,"353-2306 A St.","(706) 455-8396"),
  (5,"Brian Watts","Hope Byrd","aliquam@hotmail.com","Katsina",26,"571 Quam Avenue","1-269-615-3732"),
  (6,"Quamar Haley","Lev Stokes","metus.aenean@icloud.net","Guarulhos",26,"Ap #584-2686 Velit. Av.","1-212-781-5215"),
  (7,"Moses Valentine","Melyssa Knapp","vel@outlook.net","Jeonju",20,"528-4043 Porttitor Street","1-379-736-4480"),
  (8,"Vanna Welch","Robert Barry","in@protonmail.edu","Kalush",20,"173-2796 Neque St.","1-202-912-4285"),
  (9,"Joshua Wilson","Abraham Hays","tempor.arcu.vestibulum@yahoo.couk","Bolsward",25,"654-2643 Purus. Avenue","(772) 538-2738"),
  (10,"Mark Bates","Simon Mathews","risus.quis@icloud.couk","Galway",25,"Ap #514-8313 Donec St.","1-352-612-5257");
INSERT INTO student (student_id,fname,lname,email,city,age,address,mobile_no)
VALUES
  (11,"Zachary Acevedo","Amber Burt","at@outlook.couk","Barranca",26,"170-6604 Vitae Avenue","(197) 628-8158"),
  (12,"Aaron Mills","Hollee Williamson","augue.eu.tellus@protonmail.net","Galway",26,"Ap #185-6459 Porttitor St.","(644) 573-7943"),
  (13,"Rinah Blackburn","Regan Schroeder","a.tortor.nunc@aol.edu","Ilagan",20,"810-7560 Pellentesque, Street","(165) 809-5476"),
  (14,"Nelle Knowles","Carissa Solomon","nunc.ullamcorper@aol.org","Chuncheon",20,"9459 Egestas Rd.","1-532-274-1810"),
  (15,"McKenzie Zimmerman","Lamar Galloway","gravida.praesent@yahoo.couk","Ammanford",25,"Ap #773-8497 Commodo St.","(692) 507-2307"),
  (16,"Jin Daniel","Virginia Lara","sapien@google.couk","Lim Chu Kang",25,"501-709 Elit Road","(734) 561-9774"),
  (17,"Hakeem Powers","Fuller Guthrie","sagittis.lobortis@icloud.edu","Sievierodonetsk",26,"P.O. Box 260, 7663 Convallis St.","1-957-181-2737"),
  (18,"Irma Tillman","Alec Stewart","ac.eleifend@outlook.net","Sengkang",26,"P.O. Box 709, 3627 Pellentesque Av.","1-124-927-4637"),
  (19,"Len Contreras","Chantale Downs","mauris@google.ca","Panjim",20,"247-2620 Quisque Road","(488) 963-3337"),
  (20,"Quail Lloyd","Glenna Stephens","nec.enim@aol.ca","Saint-Remy-Geest",20,"1523 Mattis Rd.","1-551-162-5276");


DROP TABLE IF EXISTS `enrollment`;

CREATE TABLE enrollment (enrollment_id INTEGER PRIMARY KEY AUTOINCREMENT,
		enrollment_date date NOT NULL,
		student_id integer null,
                          course_id integer null,
                          grade string,
                         FOREIGN KEY (student_id) 
      REFERENCES student (student_id) 
         ON DELETE CASCADE 
         ON UPDATE NO ACTION,
                        
                         FOREIGN KEY (course_id) 
      REFERENCES course (course_id) 
         ON DELETE CASCADE 
         ON UPDATE NO ACTION
         
        
		);

INSERT INTO `enrollment` (`enrollment_id`,`enrollment_date`,`student_id`,`course_id`,`grade`)
VALUES
  (1,"2022-12-9",1,1,"A"),
  (2,"2023-8-31",2,2,"A"),
  (3,"2023-9-19",2,3,"A"),
  (4,"2024-7-6",1,7,"A"),
  (5,"2023-12-25",4,1,"A"),
  (6,"2024-9-30",9,2,"A"),
  (7,"2023-11-9",10,1,"B"),
  (8,"2023-2-17",7,9,"B"),
  (9,"2024-12-31",6,1,"B"),
  (10,"2024-6-24",1,1,"B");
INSERT INTO `enrollment` (`enrollment_id`,`enrollment_date`,`student_id`,`course_id`,`grade`)
VALUES
  (11,"2024-6-2",10,10,"B"),
  (12,"2024-10-23",9,11,"B"),
  (13,"2023-8-3",18,6,"C"),
  (14,"2024-2-29",20,3,"C"),
  (15,"2023-11-20",14,7,"C"),
  (16,"2023-1-14",17,7,"C"),
  (17,"2024-7-17",15,14,"C"),
  (18,"2024-6-24",16,6,"C"),
  (19,"2022-11-16",10,18,"D"),
  (20,"2023-12-4",19,19,"D");


--Join of at least three tables--

SELECT student.fname as firstname,student.lname as lastname, course.course_name, enrollment.grade
FROM student
JOIN enrollment ON student.student_id = enrollment.student_id
JOIN course ON enrollment.course_id = course.course_id;

--Subquery--

SELECT student.fname as firstname,student.lname as lastname
FROM student
WHERE student_id IN (SELECT student_id FROM enrollment WHERE course_id = 1);


--Group by with a having clause--


SELECT course_id, count(course_id) AS courses
FROM enrollment
GROUP BY course_id
HAVING enrollment_date >= '2023-5-10';


--Complex search criterion--

SELECT lname, course_name, grade
FROM student
JOIN enrollment ON student.student_id = enrollment.student_id
JOIN course ON enrollment.course_id = course.course_id
WHERE (course_name LIKE 'Math%' OR course_name LIKE 'Science%') 
  AND (enrollment_date >= '2023-5-10');



--Using CASE/WHEN--


SELECT CONCAT(fname, ' ', lname) AS Name, grade,
  CASE
    WHEN grade = 'A' THEN '90'
    WHEN grade = 'B' THEN '80'
    WHEN grade = 'C' THEN '70'
    WHEN grade = 'D' THEN '60'
    ELSE 'F'
  END AS grade_letter
FROM student
JOIN enrollment ON student.student_id = enrollment.student_id;
