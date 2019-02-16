drop table if exists scores cascade;
drop table if exists enrolls cascade;
drop table if exists components cascade;
drop table if exists courses cascade;
drop table if exists students cascade;
drop table if exists catalog cascade;

create table catalog (
  cno       varchar(7) not null,
  ctitle    varchar(50),
  primary key (cno)
  );
  

create table students (
  sid       varchar(5) not null,
  fname     varchar(20),
  lname     varchar(20) not null,
  minit     char,
  primary key (sid)
  );


create table courses (
  term      varchar(10) not null,
  lineno    int(4) not null,
  cno       varchar(7) not null,
  a         int(2) check(a > 0),
  b         int(2) check(b > 0),
  c         int(2) check(c > 0),
  d         int(2) check(d > 0),
  primary key (term,lineno),
  foreign key (cno) references catalog(cno)
  );


create table components (
  term      varchar(10) not null,
  lineno    int(4) not null check(lineno >= 1000),
  compname  varchar(15) not null,
  maxpoints int(4) check(maxpoints >= 0),
  weight    int(2) check(weight>=0),
  primary key (term,lineno,compname),
  foreign key (term,lineno) references courses(term,lineno)
  );


create table enrolls (
  sid       varchar(5) not null,
  term      varchar(10) not null,
  lineno    int(4) not null,
  primary key (sid,term,lineno),
  foreign key (sid) references students(sid),
  foreign key (term,lineno) references courses(term,lineno)
  );


create table scores (
  sid       varchar(5) not null,
  term      varchar(10) not null,
  lineno    int(4) not null,
  compname  varchar(15) not null,
  points    int(4) check(points >= 0),
  primary key (sid,term,lineno,compname),
  foreign key (sid,term,lineno) references enrolls(sid,term,lineno),
  foreign key (term,lineno,compname) references components(term,lineno,compname)
  );

