insert into catalog values
  ('csc226','Introduction to Programming I'),
  ('csc227','Introduction to Programming II'),
  ('csc343','Assembly Programming'),
  ('csc481','Automata and Formal Languages'),
  ('csc498','Introduction to Database Systems'),
  ('csc880','Deductive Databases and Logic Programming');

insert into students values
  ('1111','Nandita','Rajshekhar','K'),
  ('2222','Sydney','Corn','A'),
  ('3333','Susan','Williams','B'),
  ('4444','Naveen','Rajshekhar','B'),
  ('5555','Elad','Yam','G'),
  ('6666','Lincoln','Herring','F');

insert into courses values
  ('f96',1031,'csc226',90,80,65,50),
  ('f96',1032,'csc226',90,80,65,50),
  ('sp97',1031,'csc227',90,80,65,50);

insert into components values
  ('f96',1031,'exam1',100,30),
  ('f96',1031,'quizzes',80,20),
  ('f96',1031,'final',100,50),
  ('f96',1032,'programs',400,40),
  ('f96',1032,'midterm',100,20),
  ('f96',1032,'final',100,40),
  ('sp97',1031,'paper',100,50),
  ('sp97',1031,'project',100,50);

insert into enrolls values
  ('1111','f96',1031),
  ('2222','f96',1031),
  ('4444','f96',1031),
  ('1111','f96',1032),
  ('2222','f96',1032),
  ('3333','f96',1032),
  ('5555','sp97',1031),
  ('6666','sp97',1031);

insert into scores values
  ('1111','f96',1031,'exam1',90),
  ('1111','f96',1031,'quizzes',75),
  ('1111','f96',1031,'final',95),
  ('2222','f96',1031,'exam1',70),
  ('2222','f96',1031,'quizzes',40),
  ('2222','f96',1031,'final',82),
  ('4444','f96',1031,'exam1',83),
  ('4444','f96',1031,'quizzes',71),
  ('4444','f96',1031,'final',74),
  ('1111','f96',1032,'programs',400),
  ('1111','f96',1032,'midterm',95),
  ('1111','f96',1032,'final',99),
  ('2222','f96',1032,'programs',340),
  ('2222','f96',1032,'midterm',65),
  ('2222','f96',1032,'final',95),
  ('3333','f96',1032,'programs',380),
  ('3333','f96',1032,'midterm',75),
  ('3333','f96',1032,'final',88),
  ('5555','sp97',1031,'paper',80),
  ('5555','sp97',1031,'project',90),
  ('6666','sp97',1031,'paper',80),
  ('6666','sp97',1031,'project',85);

