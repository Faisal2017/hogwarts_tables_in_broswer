DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;

CREATE TABLE houses (
  id serial8 PRIMARY KEY,
  name VARCHAR(255),
  url VARCHAR(255)
  );

CREATE TABLE students (
  id serial8 PRIMARY KEY,
  first_name VARCHAR(255),
  second_name VARCHAR(255),
  house_id INT8 REFERENCES houses(id) ON DELETE CASCADE,
  age INT2
  );
