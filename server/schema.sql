CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  /* Describe your table here.*/
  id integer primary KEY AUTO_INCREMENT NOT NULL,
  username varchar(20) NOT NULL
);

CREATE TABLE messages (
  /* Describe your table here.*/
  id int NOT NULL AUTO_INCREMENT ,
  userid int NOT NULL,
  roomname varchar(40),
  text varchar(200) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (userid) REFERENCES users(id)
);

/* Create other tables and define schemas for them here! */





/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

