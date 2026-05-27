-- Drop database if exists (so script is re-runnable)
DROP DATABASE IF EXISTS nature_db;
CREATE DATABASE nature_db;
USE nature_db;

-- Drop table if it exists (safe to re-run script)
DROP TABLE IF EXISTS trees;
CREATE TABLE trees (
	common_name VARCHAR(100),
	species VARCHAR(100)
);

-- Insert tree rows
INSERT INTO trees (common_name, species) VALUES
('white oak', 'Quercus alba'),
('red maple', 'Acer rubrum'),
('ginkgo', 'Ginkgo biloba'),
('American sycamore', 'Platanus occidentalis');