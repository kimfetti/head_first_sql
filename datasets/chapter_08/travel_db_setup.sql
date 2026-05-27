-- NOTE: This file overwrites travel_db with a multitable design.
-- The data has been kept as consistent as possible with the original table,
-- but some known discrepancies exist.

-- =========================================================
-- DATABASE SETUP
-- =========================================================
DROP DATABASE IF EXISTS travel_db;
CREATE DATABASE travel_db;
USE travel_db;

-- =========================================================
-- TABLE: weather
-- =========================================================
DROP TABLE IF EXISTS weather;

CREATE TABLE weather (
    weather_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    weather VARCHAR(50)
);

INSERT INTO weather (weather) VALUES
('warm to cold'),
('warm, humid'),
('hot'),
('mild, rainy'),
('mild to hot'),
('moderate'),
('mild to cool'),
('four seasons'),
('warm'),
('rainy'),
('mild to cold'),
('mild to warm'),
('cool'),
('warm to cool');

-- =========================================================
-- TABLE: activities
-- =========================================================
DROP TABLE IF EXISTS activities;

CREATE TABLE activities (
    activity_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    activity VARCHAR(100)
);

INSERT INTO activities (activity) VALUES
('Architecture boat tour'),
('Snorkeling'),
('Tour'),
('Eat food'),
('Relax'),
('Hiking'),
('Walking tour'),
('See museums'),
('Explore wildlife'),
('Skydiving'),
('Visit museums'),
('Visit temples'),
('Eat sushi'),
('Hockey game'),
('Cheesesteaks'),
('Rock climbing'),
('Paddle boarding'),
('Enjoy culture'),
('Fine dining'),
('Surfing'),
('Ziplining'),
('Live music'),
('Water sports'),
('Biking'),
('Visit casinos'),
('See shows'),
('Relax on beach'),
('Skiing'),
('Explore market');

-- =========================================================
-- TABLE: locations
-- =========================================================
DROP TABLE IF EXISTS locations;

CREATE TABLE locations (
    location_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(25),
    state CHAR(2),
    country VARCHAR(20),
    budget INT,
    travel_mode VARCHAR(10),
    travel_hours INT,
    weather_id INT,
    FOREIGN KEY (weather_id) REFERENCES weather(weather_id)
);

INSERT INTO locations (city, state, country, budget, travel_mode, travel_hours, weather_id) VALUES
('Chicago', 'IL', 'USA', 1500, 'plane', 4, 1),
('Cancun', NULL, 'Mexico', 2000, 'plane', 5, 2),
('Rome', NULL, 'Italy', 3000, 'plane', 9, 3),
('Rio de Janeiro', NULL, 'Brazil', 2500, 'plane', 9, 2),
('London', NULL, 'UK', 3000, 'plane', 7, 4),
('Martha\'s Vineyard', 'MA', 'USA', 1500, 'car', 6, 1),
('St. John\'s', NULL, 'Canada', 1700, NULL, NULL, NULL),
('New Orleans', 'LA', 'USA', 2000, 'car', 20, 5),
('Princeton', 'NJ', 'USA', 500, 'car', 2, 6),
('Marrakesh', NULL, 'Morocco', 2000, 'plane', 7, 3),
('Paris', NULL, 'France', 2500, 'plane', 7, 7),
('Sydney', NULL, 'Australia', 4000, 'plane', 20, 9),
('Austin', 'TX', 'USA', 1500, 'plane', 4, 5),
('Montreal', NULL, 'Canada', 1200, 'car', 6, 11),
('Tokyo', NULL, 'Japan', 4000, 'plane', 13, 8),
('Philadelphia', 'PA', 'USA', 1000, 'train', 1, 10),
('Istanbul', NULL, 'Turkey', 2500, 'plane', 10, 12),
('Nashville', 'TN', 'USA', NULL, 'car', 11, NULL),
('Newport', 'RI', 'USA', 1000, 'train', 3, 11),
('Athens', NULL, 'Greece', 3000, 'plane', 11, 5),
('Dubai', NULL, 'United Arab Emirates', 3000, 'plane', 13, 3),
('Toronto', NULL, 'Canada', NULL, NULL, NULL, NULL),
('Miami', 'FL', 'USA', 3000, 'plane', 3, 3),
('Honolulu', 'HI', 'USA', 3000, 'plane', 10, 9),
('Montauk', 'NY', 'USA', 1500, 'car', 3, 1),
('Prague', NULL, 'Czech Republic', 2000, 'plane', 8, 11),
('Barcelona', NULL, 'Spain', 2500, 'plane', 8, 9),
('New York', 'NY', 'USA', 500, NULL, 0, NULL),
('Seattle', 'WA', 'USA', 2000, 'plane', 6, 10),
('Zagreb', NULL, 'Croatia', 3000, 'plane', 10, 11),
('Cape Town', NULL, 'South Africa', 3000, 'plane', 15, 12),
('Vancouver', NULL, 'Canada', 2500, 'plane', 6, 7),
('Quebec City', NULL, 'Canada', NULL, 'car', 8, NULL),
('Warsaw', NULL, 'Poland', 2500, 'plane', 9, NULL),
('Auckland', NULL, 'New Zealand', 3500, 'plane', 20, 12),
('Las Vegas', 'NV', 'USA', 2500, 'plane', 6, 3),
('Zurich', NULL, 'Switzerland', NULL, 'plane', 8, NULL),
('San Diego', 'CA', 'USA', 2000, 'plane', 6, 9),
('Zanzibar', NULL, 'Tanzania', 4000, NULL, NULL, NULL),
('Denver', 'CO', 'USA', NULL, NULL, NULL, NULL),
('Marseille', NULL, 'France', 2500, 'plane', 8, 3),
('San Jose', NULL, 'Costa Rica', 2000, 'plane', 5, 9);

-- =========================================================
-- TABLE: attractions
-- =========================================================
DROP TABLE IF EXISTS attractions;

CREATE TABLE attractions (
    attraction_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    attraction VARCHAR(150),
    location_id INT,
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

INSERT INTO attractions (attraction, location_id) VALUES
('Willis Tower', 1),
('Navy Pier', 1),
('Chichen Itza', 2),
('Xcaret Park', 2),
('Colosseum', 3),
('Trevi Fountain', 3),
('Copacabana', 4),
('Tower of London', 5),
('Aquinnah Cliffs', 6),
('French Quarter', 8),
('Garden District', 8),
('Princeton University', 9),
('Jardin Majorelle', 10),
('Koutoubia Mosque', 10),
('Eiffel Tower', 11),
('Louvre Museum', 11),
('Notre-Dame', 11),
('Sydney Opera House', 12),
('Bondi Beach', 12),
('Texas State Capitol', 13),
('Barton Springs Pool', 13),
('Notre-Dame Basilica', 14),
('Mount Royal Park', 14),
('Tsukiji Fish Market', 15),
('Shibuya Crossing', 15),
('Independence Hall', 16),
('Liberty Bell', 16),
('Grand Bazaar', 17),
('Blue Mosque', 17),
('The Breakers', 19),
('Cliff Walk', 19),
('Acropolis', 20),
('Parthenon', 20),
('Santorini', 20),
('Dubai Mall', 21),
('Palm Jumeirah', 21),
('CN Tower', 22),
('Royal Ontario Museum', 22),
('Everglades National Park', 23),
('Little Havana', 23),
('Pearl Harbor', 24),
('Waikiki Beach', 24),
('Montauk Point Lighthouse', 25),
('Prague Castle', 26),
('Charles Bridge', 26),
('St. Vitus', 26),
('La Sagrada Familia', 27),
('Empire State Building', 28),
('Statue of Liberty', 28),
('Space Needle', 29),
('Museum of Pop Culture', 29),
('St. Mark\'s Church', 30),
('Robben Island', 31),
('V and A Waterfront', 31),
('Stanley Park', 32),
('Whistler', 32),
('Old Quebec', 33),
('Montmorency Falls', 33),
('Old Town Market Square', 34),
('Sky Tower', 35),
('Waiheke Island', 35),
('The Strip', 36),
('Red Rock Canyon', 36),
('San Diego Zoo', 38),
('La Jolla Cove', 38),
('Vieux-Port', 40),
('MuCEM', 40),
('Jade Museum', 41),
('La Fortuna Waterfall', 41);

-- =========================================================
-- TABLE: location_activity (junction)
-- =========================================================
DROP TABLE IF EXISTS location_activity;

CREATE TABLE location_activity (
    location_id INT,
    activity_id INT,
    FOREIGN KEY (location_id) REFERENCES locations(location_id),
    FOREIGN KEY (activity_id) REFERENCES activities(activity_id)
);

INSERT INTO location_activity VALUES
(1, 1),
(2, 2),
(3, 3),
(3, 4),
(4, 5),
(6, 24),
(8, 14),
(8, 22),
(9, 11),
(10, 6),
(10, 16),
(11, 11),
(11, 19),
(12, 9),
(12, 10),
(13, 21),
(14, 11),
(15, 11),
(15, 13),
(16, 14),
(16, 15),
(17, 16),
(17, 17),
(20, 6),
(20, 4),
(21, 20),
(21, 25),
(22, 18),
(22, 19),
(23, 5),
(23, 4),
(24, 20),
(24, 1),
(25, 20),
(25, 24),
(26, 6),
(26, 3),
(27, 4),
(27, 5),
(29, 24),
(29, 11),
(31, 6),
(31, 9),
(32, 28),
(32, 6),
(36, 25),
(36, 26),
(38, 5),
(40, 4),
(40, 8),
(41, 6),
(41, 20);
