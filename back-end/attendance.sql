
drop table if exists user;
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


