
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
    session_id INT NOT NULL
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
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('jane.miller@email.com','IwasBorn1965','Jane Miller',3,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('laura20@email.com','IwasBorn1965','Laura',2,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('fred.smith@email.com','IwasBorn1965','Fred Smith',3,1);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('amanda.lake@email.com','IwasBorn1965','Amanda Lake',2,2);
INSERT INTO users(email,password, name, user_type,class_id) VALUES ('mike.jordan@email.com','IwasBorn1965','Mike Jordan',3,3);


INSERT INTO user_type(type) VALUES('Admin');
INSERT INTO user_type(type) VALUES('Teacher');
INSERT INTO user_type(type) VALUES('Student');

INSERT INTO attendance(user_id,session_id) VALUES(1,5);
INSERT INTO attendance(user_id,session_id) VALUES(2,3);
INSERT INTO attendance(user_id,session_id) VALUES(4,2);

INSERT INTO session(name,session_date,class_id) VALUES('JS1','2020-04-12',2);
INSERT INTO session(name,session_date,class_id) VALUES('React3','09/05/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('SQL2','05/08/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('Node1','05/06/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('SQL1','12/08/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS1','06/03/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('JS3','05/04/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('Node3','12/07/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('JS2','09/04/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('React2','12/05/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('React1','05/05/2020',2);
INSERT INTO session(name,session_date,class_id) VALUES('Node2','05/07/2020',1);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS3','02/03/2020',3);
INSERT INTO session(name,session_date,class_id) VALUES('HTML/CSS2','05/03/2020',3);

INSERT INTO class(name,location_id) VALUES('WestMidland',2);
INSERT INTO class(name,location_id) VALUES('London',1);
INSERT INTO class(name,location_id) VALUES('Manchester',3);

INSERT INTO location(name) VALUES('Manchester');
INSERT INTO location(name) VALUES('London');
INSERT INTO location(name) VALUES('WestMidland');
