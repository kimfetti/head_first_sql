-- Drop database if exists (so script is re-runnable)
DROP DATABASE IF EXISTS bank_db;
CREATE DATABASE bank_db;
USE bank_db;

-- ----------------------------
-- Table: checking
-- ----------------------------
DROP TABLE IF EXISTS checking;

CREATE TABLE checking (
    acct_id INT NOT NULL,
    name VARCHAR(50),
    balance INT
);

-- ----------------------------
-- Insert data
-- ----------------------------
INSERT INTO checking (acct_id, name, balance) VALUES
(502518, 'Chef and John', 800),
(347212, 'Josh', 100),
(812203, 'Abby', 200),
(617614, 'Coach', 1200);
