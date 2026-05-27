-- Drop database if exists (so script is re-runnable)
DROP DATABASE IF EXISTS camp_calloway_db;
CREATE DATABASE camp_calloway_db;
USE camp_calloway_db;

-- ----------------------------
-- Table: programs
-- ----------------------------
DROP TABLE IF EXISTS programs;

CREATE TABLE programs (
    prog_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    program VARCHAR(40)
);

INSERT INTO programs (prog_id, program) VALUES
(1, 'Arts and crafts'),
(2, 'Robotics'),
(3, 'Soccer training'),
(4, 'Swim lessons');

-- ----------------------------
-- Table: old_programs
-- ----------------------------
DROP TABLE IF EXISTS old_programs;

CREATE TABLE old_programs (
    prog_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    program VARCHAR(40)
);

INSERT INTO old_programs (prog_id, program) VALUES
(1, 'Arts and crafts'),
(2, 'Cooking class'),
(3, 'Hiking'),
(4, 'Spanish immersion'),
(5, 'Swim lessons'),
(6, 'Tennis');

-- ----------------------------
-- Table: campers
-- ----------------------------
DROP TABLE IF EXISTS campers;

CREATE TABLE campers (
    camper_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40),
    program_id INT,
    buddy_id INT,
    FOREIGN KEY (program_id) REFERENCES programs(prog_id),
    FOREIGN KEY (buddy_id) REFERENCES campers(camper_id)
);

-- Insert campers first
INSERT INTO campers (camper_id, name, program_id, buddy_id) VALUES
(1, 'Jimmy', 4, NULL),
(2, 'Geri', 3, NULL),
(3, 'Nola', 1, NULL),
(4, 'Sasha', 3, NULL),
(5, 'Elyse', NULL, NULL);

-- Add buddy relationships afterward
UPDATE campers
SET buddy_id = 4
WHERE camper_id = 1;

UPDATE campers
SET buddy_id = 5
WHERE camper_id = 3;

UPDATE campers
SET buddy_id = 1
WHERE camper_id = 4;

UPDATE campers
SET buddy_id = 3
WHERE camper_id = 5;
