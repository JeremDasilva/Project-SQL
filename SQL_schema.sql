CREATE SCHEMA `SQL_project`;

USE SQL_project;

CREATE TABLE schools (
	website TEXT,
    description TEXT,
    price_min INT,
    price_max INT,
	school VARCHAR(50),
    school_id INT PRIMARY KEY
);

CREATE TABLE comments (
	id INT PRIMARY KEY, 
    name VARCHAR(50), 
    anonymous BOOL, 
    hostProgramName VARCHAR(100), 
    graduatingYear INT,
	isAlumni BOOL, 
    jobTitle VARCHAR(250), 
    tagline VARCHAR(250), 
    createdAt DATE, 
    queryDate DATE, 
    program VARCHAR(100),
	overallScore FLOAT, 
    comments TEXT, 
    overall FLOAT, 
    curriculum FLOAT, 
    jobSupport FLOAT,
	review_body TEXT, 
    school VARCHAR(50), 
    school_id INT
);
    
CREATE TABLE locations (
	id INT PRIMARY KEY, 
	country_id INT,
	country_name VARCHAR(50),
	city_id INT,
	city_name VARCHAR(50),
	school VARCHAR(50),
	school_id INT
);
     
CREATE TABLE courses (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	courses TEXT, 
	school VARCHAR(50), 
	school_id INT
);

CREATE TABLE badges (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50), 
    keyword VARCHAR(50), 
    description TEXT, 
    school VARCHAR(50), 
    school_id INT
);

SELECT * FROM comments; 