# Queries
USE random_university;

SELECT *
FROM course_offering co
ORDER BY co.course_offering_id ASC;

SELECT *
FROM teacher t
ORDER BY teacher_id ASC;

SELECT *
FROM student s
ORDER BY student_id ASC;

SELECT s.student_name, co.course_name, t.teacher_name, g.grade
FROM grades g
JOIN student AS s ON s.student_id = g.student_id
JOIN course_offering AS co ON g.course_offering_id = co.course_offering_id
JOIN teacher AS t ON t.teacher_id = g.teacher_id
ORDER BY t.teacher_id ASC;

# Average grade given by all teachers:

SELECT t.teacher_name, avg(g.grade)
FROM grades g
LEFT JOIN student AS s ON s.student_id = g.student_id
LEFT JOIN course AS c ON c.course_offering_id = g.course_offering_id AND c.teacher_id = g.teacher_id
LEFT JOIN course_offering AS co ON c.course_offering_id = co.course_offering_id
LEFT JOIN teacher AS t ON t.teacher_id = c.teacher_id
GROUP BY t.teacher_name;

# Average grade given by specific teacher:

SELECT t.teacher_name, avg(g.grade)
FROM grades g
LEFT JOIN student AS s ON s.student_id = g.student_id
LEFT JOIN course AS c ON c.course_offering_id = g.course_offering_id AND c.teacher_id = g.teacher_id
LEFT JOIN course_offering AS co ON c.course_offering_id = co.course_offering_id
LEFT JOIN teacher AS t ON t.teacher_id = c.teacher_id
WHERE t.teacher_name = "Albert Einstien";

# Students Top Grades:

SELECT s.student_name, MAX(g.grade)
FROM grades g
LEFT JOIN student AS s ON s.student_id = g.student_id
LEFT JOIN course AS c ON c.course_offering_id = g.course_offering_id AND c.teacher_id = g.teacher_id
LEFT JOIN course_offering AS co ON c.course_offering_id = co.course_offering_id
LEFT JOIN teacher AS t ON t.teacher_id = c.teacher_id
GROUP BY s.student_name;

# Single Student Top Grade:

SELECT MAX(g.grade)
FROM grades g
LEFT JOIN student AS s ON s.student_id = g.student_id
LEFT JOIN course AS c ON c.course_offering_id = g.course_offering_id AND c.teacher_id = g.teacher_id
LEFT JOIN course_offering AS co ON c.course_offering_id = co.course_offering_id
LEFT JOIN teacher AS t ON t.teacher_id = c.teacher_id
WHERE s.student_name = "Jimmy Jenkins";

# Group students by courses they're enrolled in:

SELECT s.student_name, co.course_name
FROM grades g
JOIN student AS s ON s.student_id = g.student_id
JOIN course_offering AS co ON g.course_offering_id = co.course_offering_id
JOIN teacher AS t ON t.teacher_id = g.teacher_id
ORDER BY s.student_id ASC;

-- SELECT teacher_name, COUNT(teacher_name)
-- FROM teacher
-- GROUP BY teacher_name;

-- SELECT course_name, COUNT(course_name)
-- FROM course_offering
-- GROUP BY course_name;

-- SELECT student_name, COUNT(student_name)
-- FROM student
-- GROUP BY student_name;

-- SELECT student_id, COUNT(student_id)
-- FROM grades
-- GROUP BY student_id;







# Average grade in course:

SELECT co.course_name, avg(g.grade)
FROM grades g
LEFT JOIN student AS s ON s.student_id = g.student_id
LEFT JOIN course AS c ON c.course_offering_id = g.course_offering_id AND c.teacher_id = g.teacher_id
LEFT JOIN course_offering AS co ON c.course_offering_id = co.course_offering_id
LEFT JOIN teacher AS t ON t.teacher_id = c.teacher_id
GROUP BY co.course_name
ORDER BY AVG(g.grade) ASC;

# Most courses in common among teachers and students:

SELECT co.course_name, s.student_name, t.teacher_name
FROM grades g
LEFT JOIN student AS s ON s.student_id = g.student_id
LEFT JOIN course AS c ON c.course_offering_id = g.course_offering_id AND c.teacher_id = g.teacher_id
LEFT JOIN course_offering AS co ON c.course_offering_id = co.course_offering_id
LEFT JOIN teacher AS t ON t.teacher_id = c.teacher_id
WHERE s.student_name = "Marty McFly" AND t.teacher_name = "Albert Einstien";

# Most courses in common among teachers and students (Top 4):

SELECT s.student_name, COUNT(*) AS mostClasses, t.teacher_name, COUNT(*) AS mostTaught
FROM grades g
LEFT JOIN student AS s ON s.student_id = g.student_id
LEFT JOIN course AS c ON c.course_offering_id = g.course_offering_id AND c.teacher_id = g.teacher_id
LEFT JOIN course_offering AS co ON c.course_offering_id = co.course_offering_id
LEFT JOIN teacher AS t ON t.teacher_id = c.teacher_id
GROUP BY s.student_name, t.teacher_name
ORDER BY COUNT(*) DESC
LIMIT 4;


# Student GPA:

SELECT AVG(g.grade)
FROM grades g
LEFT JOIN student AS s ON s.student_id = g.student_id
LEFT JOIN course AS c ON c.course_offering_id = g.course_offering_id AND c.teacher_id = g.teacher_id
LEFT JOIN course_offering AS co ON c.course_offering_id = co.course_offering_id
LEFT JOIN teacher AS t ON t.teacher_id = c.teacher_id
WHERE s.student_name = "Jimmy Jenkins";


# Single Student's grades

SELECT s.student_name, g.grade, co.course_name
FROM grades g
LEFT JOIN student AS s ON s.student_id = g.student_id
LEFT JOIN course AS c ON c.course_offering_id = g.course_offering_id AND c.teacher_id = g.teacher_id
LEFT JOIN course_offering AS co ON c.course_offering_id = co.course_offering_id
LEFT JOIN teacher AS t ON t.teacher_id = c.teacher_id
WHERE s.student_name = "Matilda";


select * from student;
select * from teacher;
select * from course_offering;
select * from course;
select * from grades;