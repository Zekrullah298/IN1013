DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;

DROP TABLE IF EXISTS petPet, petEvent;

CREATE TABLE petPet (
    petname VARCHAR(45) PRIMARY KEY,
    owner VARCHAR(45),
    species VARCHAR(45),
    gender VARCHAR(15),
    birth DATE(),
    death DATE()
);


CREATE TABLE petEvent (
    petname VARCHAR(45),
    eventdate DATE(), 
    eventtype VARCHAR(25),
    remark VARCHAR(45),
    FOREIGN KEY(petname) REFERENCES petPet,
    PRIMARY KEY (eventdate,petname), 
);