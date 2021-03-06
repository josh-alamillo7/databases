DROP DATABASE IF EXISTS chat;

CREATE DATABASE chat;

USE chat;

DROP TABLE IF EXISTS messages;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS rooms;


CREATE TABLE rooms(
  id INTEGER UNIQUE AUTO_INCREMENT, roomname VARCHAR(30) UNIQUE, PRIMARY KEY (id)
);

CREATE TABLE users(
  id INTEGER UNIQUE AUTO_INCREMENT, username VARCHAR(30) UNIQUE, PRIMARY KEY (id)
);

CREATE TABLE messages (
  id INTEGER UNIQUE AUTO_INCREMENT, content VARCHAR(100),
  id_roomname INTEGER, id_users INTEGER, PRIMARY KEY (id),
  FOREIGN KEY (id_roomname) REFERENCES rooms (id),
  FOREIGN KEY (id_users) REFERENCES users (id) 
);

show tables;

DESCRIBE messages;


INSERT INTO rooms (roomname) VALUES('random chat');
INSERT INTO users (username) VALUES('blinky dancer');
INSERT INTO users (username) VALUES('Koopa');
INSERT INTO messages (content, id_roomname, id_users) VALUES ('lol', 1, 1);
INSERT INTO messages (content, id_roomname, id_users) VALUES ('walking', 1, 2);

-- SELECT messages.content, rooms.roomname, users.username FROM messages, rooms, users WHERE 
-- messages.id_roomname = rooms.id AND messages.id_users = users.id;




/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u student < server/schema.sql
 *  to create the database and the tables.*/

