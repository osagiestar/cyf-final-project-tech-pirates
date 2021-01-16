
drop table if exists users;
drop table if exists user_type;
drop table if exists attendance;
drop table if exists session;
drop table if exists class;
drop table if exists location;


CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    email VARCHAR(50) NULL DEFAULT NULL,
    password VARCHAR(50) NULL  NULL,
    name VARCHAR(50) NULL  NULL ,
    user_type INT NOT NULL,
    class_id INT
);
CREATE TABLE user_type (
    id SERIAL PRIMARY KEY,
    type VARCHAR(30)

);
CREATE TABLE attendance (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    session_id INT NOT NULL,
    attendance_date timestamp NOT NULL
);

CREATE TABLE session (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NULL  NULL,
    session_date timestamp NOT NULL,
    class_id INT NOT NULL
);

CREATE TABLE class (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NULL  NULL,
    location_id INT NOT NULL
);
CREATE TABLE location (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NULL  NULL
);


INSERT INTO users(email,password, name, user_type,class_id) VALUES ('guy.crawford@email.com','password','Guy Crawford',1,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('jamal@email.com',       'password','Jamal',1,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('sara2@email.com',       'password','Sara',1,3);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('zina.zimana@email.com', 'password','Zina Zimana',1,4);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('jane.miller@email.com', 'password','Jane Miller',2,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('laura20@email.com',     'password','Laura',2,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('fred.smith@email.com',  'password','Fred Smith',2,3);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('shanice.omol@email.com','password', 'Shanice Omola', 2,4);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('amina.lasho@email.com', 'password','Amina Lasho',3,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('amanda.lake@email.com', 'password','Amanda Lake',3,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('mike.jordan@email.com', 'password','Mike Jordan',3,3);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('john.mayor@email.com',  'password','John Mayor',3,4);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('sharon.cher@email.com', 'password','Sharon Tatcher',3,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('nick.snow@email.com',   'password','Nick Snow',3,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('claire.lewis@email.com','password','Claire Lewis',3,3);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('pedro.morgan@email.com','password','Pedro Morgan',3,4);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('andy.tiger@email.com',  'password','Andy Tiger',3,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('pat.roberts@email.com', 'password','Pat Roberts',3,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('shirley.12@email.com',  'password','Sharon Tatcher',3,3);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('cece.winnans@email.com','password','Cece Winnans',3,4);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('harry.kane@email.com',  'password','Harry Kane',3,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('mo.farah@email.com',    'password','Mo Farah',3,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('lewis.hilton@email.com','password','Lewis Hamilton',3,3);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('Jason.borne@email.com', 'password','Jason Borne',3,4);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('jonatan.ross@email.com','password','Jonathan Ross',3,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('james.bond@email.com',  'password','James Bond',3,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('ant.man@email.com',     'password','Ant Man',3,3);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('spider.man@email.com',  'password','Spider Man',3,4);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('bat.man@email.com',     'password','Bat Man',3,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('isaac.newton@email.com','password','Isaac Newton',3,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('daniel.levis@email.com','password','Daniel Levis',3,3);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('Mike.phleps@email.com', 'password','Mike Phleps',3,4);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('Rick.ross@email.com',   'password','Rick Ross',3,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('sherlock.hol@email.com','password','Sherlock Holmes',3,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('richard.gere@email.com','password','Richard Gere',3,3);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('sean.combes@email.com', 'password','Sean Combes',3,4);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('mi.jackson@email.com',  'password','Michael Jackson',3,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('ismael.shid@email.com', 'password','Ismael Rashid',3,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('david.bowyer@email.com','password','David Bowyer',3,3);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('M.pastore@email.com',   'password','Michelle Pastore',3,4);


INSERT INTO user_type(type) VALUES('Admin');
INSERT INTO user_type(type) VALUES('Teacher');
INSERT INTO user_type(type) VALUES('Student');


INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(9,1,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(13,2,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(17,3,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(21,4,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(25,5,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(29,6,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(33,7,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(37,8,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(17,9,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(21,13,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(33,25,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(37,29,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(17,42,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(21,46,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(33,58,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(37,62,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(13,3,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(17,7,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(18,10,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(22,14,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(10,17,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(14,18,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(18,19,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(22,20,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(26,21,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(30,22,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(34,23,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(38,24,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(34,26,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(38,30,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(18,43,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(22,47,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(34,59,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(38,63,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(14,4,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(18,8,CURRENT_TIMESTAMP);

INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(19,11,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(23,15,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(35,27,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(39,31,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(11,33,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(15,34,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(19,35,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(23,36,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(27,37,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(31,38,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(35,39,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(39,40,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(19,44,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(23,48,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(35,60,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(39,64,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(15,5,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(20,12,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(24,16,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(36,28,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(40,32,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(16,41,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(20,45,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(12,49,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(16,50,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(20,51,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(24,52,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(28,53,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(32,54,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(36,55,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(40,56,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(32,57,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(36,61,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(40,1,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(16,1,CURRENT_TIMESTAMP);

INSERT INTO session(name,session_date,class_id) VALUES('Git/GitHub',CURRENT_TIMESTAMP,1);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS1',CURRENT_TIMESTAMP,1);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS2',CURRENT_TIMESTAMP,1);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS3',CURRENT_TIMESTAMP,1);
INSERT INTO session(name,session_date,class_id) VALUES('JSS1',CURRENT_TIMESTAMP,1);
INSERT INTO session(name,session_date,class_id) VALUES('JSS2',CURRENT_TIMESTAMP,1);
INSERT INTO session(name,session_date,class_id) VALUES('JSS3',CURRENT_TIMESTAMP,1);
INSERT INTO session(name,session_date,class_id) VALUES('React1',CURRENT_TIMESTAMP,1);
INSERT INTO session(name,session_date,class_id) VALUES('React2',CURRENT_TIMESTAMP,1);
INSERT INTO session(name,session_date,class_id) VALUES('React3',CURRENT_TIMESTAMP,1);
INSERT INTO session(name,session_date,class_id) VALUES('Node1',CURRENT_TIMESTAMP,1);
INSERT INTO session(name,session_date,class_id) VALUES('Node2',CURRENT_TIMESTAMP,1);
INSERT INTO session(name,session_date,class_id) VALUES('Node3',CURRENT_TIMESTAMP,1);
INSERT INTO session(name,session_date,class_id) VALUES('SQL1',CURRENT_TIMESTAMP,1);
INSERT INTO session(name,session_date,class_id) VALUES('SQL2',CURRENT_TIMESTAMP,1);
INSERT INTO session(name,session_date,class_id) VALUES('SQL3',CURRENT_TIMESTAMP,1);
INSERT INTO session(name,session_date,class_id) VALUES('Git/GitHub',CURRENT_TIMESTAMP,2);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS1',CURRENT_TIMESTAMP,2);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS2',CURRENT_TIMESTAMP,2);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS3',CURRENT_TIMESTAMP,2);
INSERT INTO session(name,session_date,class_id) VALUES('JSS1',CURRENT_TIMESTAMP,2);
INSERT INTO session(name,session_date,class_id) VALUES('JSS2',CURRENT_TIMESTAMP,2);
INSERT INTO session(name,session_date,class_id) VALUES('JSS3',CURRENT_TIMESTAMP,2);
INSERT INTO session(name,session_date,class_id) VALUES('React1',CURRENT_TIMESTAMP,2);
INSERT INTO session(name,session_date,class_id) VALUES('React2',CURRENT_TIMESTAMP,2);
INSERT INTO session(name,session_date,class_id) VALUES('React3',CURRENT_TIMESTAMP,2);
INSERT INTO session(name,session_date,class_id) VALUES('Node1',CURRENT_TIMESTAMP,2);
INSERT INTO session(name,session_date,class_id) VALUES('Node2',CURRENT_TIMESTAMP,2);
INSERT INTO session(name,session_date,class_id) VALUES('Node3',CURRENT_TIMESTAMP,2);
INSERT INTO session(name,session_date,class_id) VALUES('SQL1',CURRENT_TIMESTAMP,2);
INSERT INTO session(name,session_date,class_id) VALUES('SQL2',CURRENT_TIMESTAMP,2);
INSERT INTO session(name,session_date,class_id) VALUES('SQL3',CURRENT_TIMESTAMP,2);
INSERT INTO session(name,session_date,class_id) VALUES('Git/GitHub',CURRENT_TIMESTAMP,3);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS1',CURRENT_TIMESTAMP,3);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS2',CURRENT_TIMESTAMP,3);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS3',CURRENT_TIMESTAMP,3);
INSERT INTO session(name,session_date,class_id) VALUES('JSS1',CURRENT_TIMESTAMP,3);
INSERT INTO session(name,session_date,class_id) VALUES('JSS2',CURRENT_TIMESTAMP,3);
INSERT INTO session(name,session_date,class_id) VALUES('JSS3',CURRENT_TIMESTAMP,3);
INSERT INTO session(name,session_date,class_id) VALUES('React1',CURRENT_TIMESTAMP,3);
INSERT INTO session(name,session_date,class_id) VALUES('React2',CURRENT_TIMESTAMP,3);
INSERT INTO session(name,session_date,class_id) VALUES('React3',CURRENT_TIMESTAMP,3);
INSERT INTO session(name,session_date,class_id) VALUES('Node1',CURRENT_TIMESTAMP,3);
INSERT INTO session(name,session_date,class_id) VALUES('Node2',CURRENT_TIMESTAMP,3);
INSERT INTO session(name,session_date,class_id) VALUES('Node3',CURRENT_TIMESTAMP,3);
INSERT INTO session(name,session_date,class_id) VALUES('SQL1',CURRENT_TIMESTAMP,3);
INSERT INTO session(name,session_date,class_id) VALUES('SQL2',CURRENT_TIMESTAMP,3);
INSERT INTO session(name,session_date,class_id) VALUES('SQL3',CURRENT_TIMESTAMP,3);
INSERT INTO session(name,session_date,class_id) VALUES('Git/GitHub',CURRENT_TIMESTAMP,4);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS1',CURRENT_TIMESTAMP,4);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS2',CURRENT_TIMESTAMP,4);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS3',CURRENT_TIMESTAMP,4);
INSERT INTO session(name,session_date,class_id) VALUES('JSS1', CURRENT_TIMESTAMP,4);
INSERT INTO session(name,session_date,class_id) VALUES('JSS2', CURRENT_TIMESTAMP,4);
INSERT INTO session(name,session_date,class_id) VALUES('JSS3', CURRENT_TIMESTAMP,4);
INSERT INTO session(name,session_date,class_id) VALUES('React1',CURRENT_TIMESTAMP ,4);
INSERT INTO session(name,session_date,class_id) VALUES('React2',CURRENT_TIMESTAMP ,4);
INSERT INTO session(name,session_date,class_id) VALUES('React3',CURRENT_TIMESTAMP ,4);
INSERT INTO session(name,session_date,class_id) VALUES('Node1', CURRENT_TIMESTAMP ,4);
INSERT INTO session(name,session_date,class_id) VALUES('Node2', CURRENT_TIMESTAMP ,4);
INSERT INTO session(name,session_date,class_id) VALUES('Node3', CURRENT_TIMESTAMP ,4);
INSERT INTO session(name,session_date,class_id) VALUES('SQL1', CURRENT_TIMESTAMP,4);
INSERT INTO session(name,session_date,class_id) VALUES('SQL2', CURRENT_TIMESTAMP,4);
INSERT INTO session(name,session_date,class_id) VALUES('SQL3', CURRENT_TIMESTAMP,4);


INSERT INTO class(name,location_id) VALUES('London',1);
INSERT INTO class(name,location_id) VALUES('WestMidland',2);
INSERT INTO class(name,location_id) VALUES('Manchester',3);
INSERT INTO class(name,location_id) VALUES('Scotland',4);


INSERT INTO location(name) VALUES('London');
INSERT INTO location(name) VALUES('WestMidland');
INSERT INTO location(name) VALUES('Manchester');
INSERT INTO location(name) VALUES('Scotland');


select distinct users.name,(select to_char(session_date, 'yyyy-mm-dd hh:mi:ss') from session where  session.id =18) as session_date,(select to_char(attendance_date, 'yyyy-mm-dd hh:mi:ss') from attendance where 
attendance.user_id = users.id and attendance.session_id = 18 limit 1) as attendance_date, 
 (select attendance_date>session.session_date  from attendance where 
attendance.user_id = users.id and attendance.session_id = 18 limit 1) as late from users,session where users.class_id=2 and user_type = 3;

select session.name,(select to_char(session_date, 'yyyy-mm-dd hh:mi:ss') from session where  session.id = 17) 
as session_date,(select to_char(attendance_date, 'yyyy-mm-dd hh:mi:ss') from attendance where attendance.user_id = 10 
and attendance.session_id = session.id limit 1) as attendance_date, (select attendance_date>session.session_date  from attendance
 where attendance.user_id = 10 and attendance.session_id = session.id limit 1) as late from session where session.class_id=2;