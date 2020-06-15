USE random_university;

# Insert Teachers

INSERT INTO teacher(teacher_id, teacher_name)
VALUES (1, "Albert Einstien");

INSERT INTO teacher(teacher_id, teacher_name)
VALUES (2, "Mr. Myagi");

INSERT INTO teacher(teacher_id, teacher_name)
VALUES (3, "Stephen Hawking"); 

INSERT INTO teacher(teacher_id, teacher_name)
VALUES (4, "Bob Ross"); 

INSERT INTO teacher(teacher_id, teacher_name)
VALUES (5, "Charles Xavier"); 

INSERT INTO teacher(teacher_id, teacher_name)
VALUES (6, "Jaime Escalante"); 

INSERT INTO teacher(teacher_id, teacher_name)
VALUES (7, "Ludwig Von Drake"); 

INSERT INTO teacher(teacher_id, teacher_name)
VALUES (8, "Dolores Umbridge"); 

INSERT INTO teacher(teacher_id, teacher_name)
VALUES (9, "George Feeny"); 

INSERT INTO teacher(teacher_id, teacher_name)
VALUES (10, "Agatha Trunchbull"); 


# Insert Courses

INSERT INTO course_offering(course_offering_id, course_name)
VALUES (1, "Time Travel"); 

INSERT INTO course_offering(course_offering_id, course_name)
VALUES (2, "Martial Arts"); 

INSERT INTO course_offering(course_offering_id, course_name)
VALUES (3, "Physics"); 

INSERT INTO course_offering(course_offering_id, course_name)
VALUES (4, "The Joy of Painting"); 

INSERT INTO course_offering(course_offering_id, course_name)
VALUES (5, "Mutant Abilities"); 

INSERT INTO course_offering(course_offering_id, course_name)
VALUES (6, "Basic Math"); 

INSERT INTO course_offering(course_offering_id, course_name)
VALUES (7, "Fun with Science"); 

INSERT INTO course_offering(course_offering_id, course_name)
VALUES (8, "Defence against the Dark Arts"); 

INSERT INTO course_offering(course_offering_id, course_name)
VALUES (9, "Life Principles"); 

INSERT INTO course_offering(course_offering_id, course_name)
VALUES (10, "Childhood Discipline"); 


# Insert Students
INSERT INTO student(student_id, student_name)
VALUES (1, "Billy Bob");

INSERT INTO student(student_id, student_name)
VALUES (2, "Jimmy Jenkins");

INSERT INTO student(student_id, student_name)
VALUES (3, "Matilda");

INSERT INTO student(student_id, student_name)
VALUES (4, "Daniel Larusso");

INSERT INTO student(student_id, student_name)
VALUES (5, "Ron Weasley");

INSERT INTO student(student_id, student_name)
VALUES (6, "Marty McFly");

INSERT INTO student(student_id, student_name)
VALUES (7, "Pancho Chavez");

INSERT INTO student(student_id, student_name)
VALUES (8, "Jackson Pollock");

INSERT INTO student(student_id, student_name)
VALUES (9, "Jean Grey");

INSERT INTO student(student_id, student_name)
VALUES (10, "Suzy Brown");


# Einstein
INSERT INTO course(course_offering_id, teacher_id)
VALUES (1, 1);
INSERT INTO course(course_offering_id, teacher_id)
VALUES (3, 1);
INSERT INTO course(course_offering_id, teacher_id)
VALUES (6, 1);
INSERT INTO course(course_offering_id, teacher_id)
VALUES (7, 1);


# Mr. Myagi
INSERT INTO course(course_offering_id, teacher_id)
VALUES (2, 2);
INSERT INTO course(course_offering_id, teacher_id)
VALUES (5, 2);
INSERT INTO course(course_offering_id, teacher_id)
VALUES (9, 2);

# Stephen Hawking
INSERT INTO course(course_offering_id, teacher_id)
VALUES (3, 3);
INSERT INTO course(course_offering_id, teacher_id)
VALUES (1, 3);
INSERT INTO course(course_offering_id, teacher_id)
VALUES (6, 3);

# Bob Ross
INSERT INTO course(course_offering_id, teacher_id)
VALUES (4, 4);
INSERT INTO course(course_offering_id, teacher_id)
VALUES (9, 4);

# Charles Xavier
INSERT INTO course(course_offering_id, teacher_id)
VALUES (5, 5);
INSERT INTO course(course_offering_id, teacher_id)
VALUES (9, 5);

# Jaime Escalante
INSERT INTO course(course_offering_id, teacher_id)
VALUES (6, 6);
INSERT INTO course(course_offering_id, teacher_id)
VALUES (10, 6);

# Ludwig Von Drake
INSERT INTO course(course_offering_id, teacher_id)
VALUES (7, 7);
INSERT INTO course(course_offering_id, teacher_id)
VALUES (5, 7);

# Dolores Umbridge
INSERT INTO course(course_offering_id, teacher_id)
VALUES (8, 8);
INSERT INTO course(course_offering_id, teacher_id)
VALUES (10, 8);

# George Feeny
INSERT INTO course(course_offering_id, teacher_id)
VALUES (9, 9);
INSERT INTO course(course_offering_id, teacher_id)
VALUES (10, 9);
INSERT INTO course(course_offering_id, teacher_id)
VALUES (6, 9);

# Agatha Trunchbull
INSERT INTO course(course_offering_id, teacher_id)
VALUES (10, 10);
INSERT INTO course(course_offering_id, teacher_id)
VALUES (2, 10);


# Course / Teacher / Student / Grades

#  Grades:
#  4.0 = A
#  3.0 = B
#  2.0 = C
#  1.0 = D
#  Less than 1.0 = F


# Time Travel
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (1,1,1,2.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (1,1,2,2.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (1,1,7,2.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (1,1,9,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (1,1,6,4.0);

INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (1,3,9,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (1,3,10,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (1,3,5,3.0);


# Physics
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (3,1,2,2.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (3,1,3,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (3,1,5,2.5);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (3,1,6,3.5);

INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (3,3,2,3.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (3,3,4,3.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (3,3,8,2.0);

# Martial arts
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (2,2,2,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (2,2,4,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (2,2,5,2.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (2,2,1,1.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (2,2,10,4.0);


# The Joy of Painting
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (4,4,8,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (4,4,3,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (4,4,10,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (4,4,6,3.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (4,4,9,2.0);

# Mutant Abilities
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (5,2,1,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (5,2,8,3.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (5,2,4,4.0);

INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (5,5,1,1.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (5,5,2,1.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (5,5,3,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (5,5,5,3.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (5,5,9,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (5,5,10,3.0);

# Basic Math
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (6,6,1,1.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (6,6,2,2.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (6,6,7,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (6,6,3,4.0);

# Fun with Science
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (7,7,10,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (7,7,6,3.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (7,7,9,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (7,7,1,2.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (7,7,5,4.0);

# Defence against the Dark Arts
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (8,8,1,1.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (8,8,2,2.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (8,8,3,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (8,8,5,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (8,8,9,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (8,8,10,3.0);

# Life Principles
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (9,9,1,1.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (9,9,2,3.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (9,9,3,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (9,9,4,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (9,9,10,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (9,9,7,4.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (9,9,6,3.0);

# Childhood Discipline
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (10,10,1,1.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (10,10,2,2.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (10,10,3,1.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (10,10,5,2.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (10,10,10,2.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (10,1,6,4.0);

INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (10,8,4,3.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (10,8,6,1.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (10,8,7,1.0);
INSERT INTO grades(course_offering_id, teacher_id, student_id, grade)
VALUES (10,8,8,2.0);






