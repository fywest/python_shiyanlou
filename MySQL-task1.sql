CREATE DATABASE gradesystem;

use gradesystem;

CREATE TABLE student
(
  sid INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  sname   CHAR(20) NOT NULL,
  gender CHAR(10) NOT NULL
 );

CREATE TABLE course
(
  cid      INT(10) NOT NULL AUTO_INCREMENT,
  cname    CHAR(20) NOT NULL,
  PRIMARY KEY(cid)
 );
 
CREATE TABLE mark
(
  mid   INT(10) NOT NULL AUTO_INCREMENT,
  sid   INT(10) NOT NULL,
  cid   INT(10) NOT NULL,
  score INT(10) NOT NULL,
  PRIMARY KEY(mid),
  FOREIGN KEY(sid) REFERENCES student(sid),  
  FOREIGN KEY(cid) REFERENCES course(cid)
 );

INSERT INTO student VALUES(1,'Tom','male'),(2,'Jack','male'),(3,'Rose','female');
INSERT INTO course VALUES(1,'math'),(2,'physics'),(3,'chemistry');
INSERT INTO mark VALUES(1,1,1,80),(2,2,1,85),(3,3,1,90);
