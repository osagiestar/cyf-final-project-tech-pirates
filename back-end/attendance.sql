
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
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('jamal@email.com','IwasBorn1965','Jamal',2,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('sara2@email.com','IwasBorn1965','Sara',3,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('jane.miller@email.com','IwasBorn1965','Jane Miller',3,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('laura20@email.com','IwasBorn1965','Laura',3,3);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('fred.smith@email.com','IwasBorn1965','Fred Smith',3,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('amanda.lake@email.com','IwasBorn1965','Amanda Lake',3,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('mike.jordan@email.com','IwasBorn1965','Mike Jordan',3,3);


INSERT INTO user_type(type) VALUES('Admin');
INSERT INTO user_type(type) VALUES('Teacher');
INSERT INTO user_type(type) VALUES('Student');

INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(3,5,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(5,3,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(4,2,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(3,5,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(4,3,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(5,2,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(6,5,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(7,3,CURRENT_TIMESTAMP);
INSERT INTO attendance(user_id,session_id,attendance_date) VALUES(8,2,CURRENT_TIMESTAMP);

INSERT INTO session(name,session_date,class_id) VALUES('Git/GitHub','07/03/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS1','07/03/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS2','14/03/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS3','21/03/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('JSS1','28/03/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('JSS2','04/05/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('JSS3','11/05/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('React1','18/05/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('React2','25/05/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('React3','02/06/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('Node1','12/06/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('Node2','06/06/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('Node3','13/06/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('SQL1','20/06/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('SQL2','27/06/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('SQL3','04/07/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('Git/GitHub','06/06/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS1','13/06/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS2','20/06/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS3','27/06/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('JSS1','04/07/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('JSS2','11/07/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('JSS3','18/07/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('React1','25/07/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('React2','01/08/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('React3','08/08/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('Node1','15/08/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('Node2','22/08/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('Node3','29/08/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('SQL1','05/09/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('SQL2','12/09/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('SQL3','19/09/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('Git/GitHub','05/09/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS1','12/09/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS2','19/09/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS3','26/09/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('JSS1','03/10/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('JSS2','10/10/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('JSS3','17/10/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('React1','24/10/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('React2','31/10/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('React3','07/11/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('Node1','14/11/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('Node2','21/11/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('Node3','28/11/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('SQL1','05/12/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('SQL2','12/12/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('SQL3','19/12/2020',1);


INSERT INTO class(name,location_id) VALUES('WestMidland',2);
INSERT INTO class(name,location_id) VALUES('London',1);
INSERT INTO class(name,location_id) VALUES('Manchester',3);

INSERT INTO location(name) VALUES('Manchester');
INSERT INTO location(name) VALUES('London');
INSERT INTO location(name) VALUES('WestMidland');
