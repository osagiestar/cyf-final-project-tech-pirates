
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
    session_date DATE NOT NULL,
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


INSERT INTO users(email,password, name, user_type,class_id) VALUES ('guy.crawford@email.com','IwasBorn1965','Guy Crawford',1,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('jamal@email.com','IwasBorn1965','Jamal',1,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('sara2@email.com','IwasBorn1965','Sara',1,3);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('zina.zimana@email.com','IwasBorn1965','Zina Zimana',1,4);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('jane.miller@email.com','IwasBorn1965','Jane Miller',2,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('laura20@email.com','IwasBorn1965','Laura',2,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('fred.smith@email.com','IwasBorn1965','Fred Smith',2,3);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('shanice.omola@email.com','IwasBorn1965', 'Shanice Omola', 2,4);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('amina.lasho@email.com','IwasBorn1965','Amina Lasho',3,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('amanda.lake@email.com','IwasBorn1965','Amanda Lake',3,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('mike.jordan@email.com','IwasBorn1965','Mike Jordan',3,3);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('john.mayor@email.com','IwasBorn1965','John Mayor',3,4);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('sharon.tatcher@email.com','IwasBorn1965','Sharon Tatcher',3,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('nick.snow@email.com','IwasBorn1965','Nick Snow',3,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('claire.lewis@email.com','IwasBorn1965','Claire Lewis',3,3);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('pedro.morgan@email.com','IwasBorn1965','Pedro Morgan',3,4);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('andy.tiger@email.com','IwasBorn1965','Andy Tiger',3,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('pat.roberts@email.com','IwasBorn1965','Pat Roberts',3,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('shirley.ceaser@email.com','IwasBorn1965','Sharon Tatcher',3,3);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('cece.winnans@email.com','IwasBorn1965','Cece Winnans',3,4);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('harry.kane@email.com','IwasBorn1965','Harry Kane',3,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('mo.farah@email.com','IwasBorn1965','Mo Farah',3,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('lewis.hamilton@email.com','IwasBorn1965','Lewis Hamilton',3,3);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('Jason.borne@email.com','IwasBorn1965','Jason Borne',3,4);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('jonathan.ross@email.com','IwasBorn1965','Jonathan Ross',3,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('james.bond@email.com','IwasBorn1965','James Bond',3,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('ant.man@email.com','IwasBorn1965','Ant Man',3,3);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('spider.man@email.com','IwasBorn1965','Spider Man',3,4);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('bat.man@email.com','IwasBorn1965','Bat Man',3,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('isaac.newton@email.com','IwasBorn1965','Isaac Newton',3,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('daniel.levis@email.com','IwasBorn1965','Daniel Levis',3,3);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('Mike.phleps@email.com','IwasBorn1965','Mike Phleps',3,4);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('Rick.ross@email.com','IwasBorn1965','Rick Ross',3,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('sherlock.holmes@email.com','IwasBorn1965','Sherlock Holmes',3,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('richard.gere@email.com','IwasBorn1965','Richard Gere',3,3);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('sean.combes@email.com','IwasBorn1965','Sean Combes',3,4);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('michael.jackson@email.com','IwasBorn1965','Michael Jackson',3,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('ismael.rashid@email.com','IwasBorn1965','Ismael Rashid',3,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('david.bowyer@email.com','IwasBorn1965','David Bowyer',3,3);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('Michelle.pastore@email.com','IwasBorn1965','Michelle Pastore',3,4);


INSERT INTO user_type(type) VALUES('Admin');
INSERT INTO user_type(type) VALUES('Teacher');
INSERT INTO user_type(type) VALUES('Student');


INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(9,2,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(10,5,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(11,4,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(12,6,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(13,7,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(14,8,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(15,9,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(16,10,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(17,11,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(18,12,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(19,1,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(20,3,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(21,13,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(22,14,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(23,15,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(24,16,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(25,1,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(26,2,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(27,5,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(28,3,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(29,4,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(30,6,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(31,7,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(32,8,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(33,9,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(34,10,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(35,11,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(36,12,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(37,13,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(38,14,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(39,15,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(40,16,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(41,1,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(9,2,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(10,3,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(11,4,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(12,5,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(13,6,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(14,7,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(15,8,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(16,9,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(17,10,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(18,11,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(19,12,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(20,13,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(21,14,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(22,15,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(23,16,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(24,12,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(25,11,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(26,10,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(27,9,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(28,8,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(28,7,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(30,6,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(31,5,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(32,4,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(33,3,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(34,2,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(35,1,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(36,14,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(37,13,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(38,12,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(39,11,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(40,10,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(41,9,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(13,8,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(14,7,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(15,6,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(16,5,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(17,4,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(18,3,CURRENT_TIMESTAMP);

INSERT INTO session(name,session_date,class_id) VALUES('Git/GitHub','09/03/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS1','07/03/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS2','04/03/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS3','11/03/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('JSS1','08/03/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('JSS2','04/05/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('JSS3','11/05/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('React1','08/05/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('React2','05/05/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('React3','02/06/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('Node1','12/06/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('Node2','06/06/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('Node3','03/06/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('SQL1','10/06/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('SQL2','07/06/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('SQL3','04/07/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('Git/GitHub','06/06/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS1','03/06/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS2','10/06/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS3','07/06/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('JSS1','04/07/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('JSS2','01/07/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('JSS3','08/07/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('React1','05/07/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('React2','01/08/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('React3','08/08/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('Node1','05/08/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('Node2','02/08/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('Node3','09/08/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('SQL1','05/09/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('SQL2','12/09/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('SQL3','09/09/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('Git/GitHub','05/09/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS1','12/09/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS2','09/09/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS3','06/09/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('JSS1','03/10/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('JSS2','10/10/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('JSS3','07/10/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('React1','04/10/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('React2','03/10/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('React3','07/11/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('Node1','04/11/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('Node2','01/11/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('Node3','08/11/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('SQL1','05/12/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('SQL2','12/12/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('SQL3','10/12/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('Git/GitHub','05/09/2020',4);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS1','12/09/2020',4);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS2','09/09/2020',4);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS3','06/09/2020',4);
INSERT INTO session(name,session_date,class_id) VALUES('JSS1','03/10/2020',4);
INSERT INTO session(name,session_date,class_id) VALUES('JSS2','10/10/2020',4);
INSERT INTO session(name,session_date,class_id) VALUES('JSS3','07/10/2020',4);
INSERT INTO session(name,session_date,class_id) VALUES('React1','04/10/2020',4);
INSERT INTO session(name,session_date,class_id) VALUES('React2','03/10/2020',4);
INSERT INTO session(name,session_date,class_id) VALUES('React3','07/11/2020',4);
INSERT INTO session(name,session_date,class_id) VALUES('Node1','04/11/2020',4);
INSERT INTO session(name,session_date,class_id) VALUES('Node2','01/11/2020',4);
INSERT INTO session(name,session_date,class_id) VALUES('Node3','08/11/2020',4);
INSERT INTO session(name,session_date,class_id) VALUES('SQL1','05/12/2020',4);
INSERT INTO session(name,session_date,class_id) VALUES('SQL2','12/12/2020',4);
INSERT INTO session(name,session_date,class_id) VALUES('SQL3','10/12/2020',4);


INSERT INTO class(name,location_id) VALUES('London',1);
INSERT INTO class(name,location_id) VALUES('WestMidland',2);
INSERT INTO class(name,location_id) VALUES('Manchester',3);
INSERT INTO class(name,location_id) VALUES('Scotland',4);


INSERT INTO location(name) VALUES('London');
INSERT INTO location(name) VALUES('WestMidland');
INSERT INTO location(name) VALUES('Manchester');
INSERT INTO location(name) VALUES('Scotland');
