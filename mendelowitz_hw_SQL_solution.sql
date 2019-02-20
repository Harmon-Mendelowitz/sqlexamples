-- Rename this file and use it to answer the qyuestions for the Gradebook DB

-- 1
select fname,lname,minit from students where sid in(select sid from enrolls where lineno in (select lineno from courses where cno='csc226') and term in (select term from courses where cno='csc226'));

-- 2
select fname,lname,minit from students where sid in (select min(sid) from students);

-- 3
select fname,lname,minit from students where sid in (select sid from enrolls where term='f96');

-- 4
select sid from students where sid not in (select sid from enrolls where term='f96');

-- 5
select sid from students where sid in (select sid from enrolls where term='f96' or term='sp97');

-- 6
select avg(points) from scores where term='f96' and lineno=1031;

-- 7
select distinct avg(points) from scores group by term, lineno;

-- 8
select avg from (select distinct avg(points) as avg from scores group by term, lineno) as a where avg>99.99;

-- 9
select sid,fname,lname,minit from students where sid not in (select sid from enrolls where term='f96');

-- 10
select fname,lname,minit from students where sid in (select sid from enrolls,courses where enrolls.term=courses.term and enrolls.lineno=courses.lineno and cno='csc226') and sid in (select sid from enrolls,courses where enrolls.term=courses.term and enrolls.lineno=courses.lineno and cno='csc227');

-- 11
select fname,lname,minit from students where sid not in (select sid from enrolls);
