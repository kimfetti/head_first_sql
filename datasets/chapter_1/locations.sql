-- Drop database if exists (so script is re-runnable)
DROP DATABASE IF EXISTS travel_db;
CREATE DATABASE travel_db;
USE travel_db;

-- Drop table if it exists (safe to re-run script)
DROP TABLE IF EXISTS locations;

CREATE TABLE locations (
    city VARCHAR(25),
    state CHAR(2),
    country VARCHAR(25),
    budget INT,
    weather VARCHAR(25),
    travel_mode VARCHAR(10),
    travel_hours INT,
    activities VARCHAR(100),
    attractions VARCHAR(100)
);

-- Insert location rows
INSERT INTO locations (
    city,
    state,
    country,
    budget,
    weather,
    travel_mode,
    travel_hours,
    activities,
    attractions
) VALUES
('Chicago', 'IL', 'USA', 1500, 'warm to cold', 'plane', 4, 'Architecture boat tour', 'Willis Tower, Navy Pier'),
('Cancun', NULL, 'Mexico', 2000, 'warm, humid', 'plane', 5, 'Snorkeling', 'Chichen Itza, Xcaret Park'),
('Rome', NULL, 'Italy', 3000, 'hot', 'plane', 9, 'Tour, Eat food', 'Colosseum, Trevi Fountain'),
('Rio de Janeiro', NULL, 'Brazil', 2500, 'warm, humid', 'plane', 9, 'Relax, Hiking', 'Copacabana'),
('London', NULL, 'UK', 3000, 'mild, rainy', 'plane', 7, 'Walking tour, See museums', 'Tower of London'),
('Martha''s Vineyard', 'MA', 'USA', 1500, 'warm to cold', 'car', 6, 'Kayaking, Biking', 'Aquinnah Cliffs'),
('St. John''s', NULL, 'Canada', 1700, NULL, NULL, NULL, NULL, NULL),
('New Orleans', 'LA', 'USA', 2000, 'mild to hot', 'car', 20, 'Mardi Gras, Jazz', 'French Quarter, Garden District'),
('Princeton', 'NJ', 'USA', 500, 'moderate', 'car', 2, 'Visit museums', 'Princeton University'),
('Marrakesh', NULL, 'Morocco', 2000, 'hot', 'plane', 7, 'Camel trekking, Hiking', 'Jardin Majorelle, Koutoubia Mosque'),
('Paris', NULL, 'France', 2500, 'mild to cool', 'plane', 7, 'Visit museums, Shopping', 'Eiffel Tower, Louvre Museum, Notre-Dame'),
('Sydney', NULL, 'Australia', 4000, 'warm', 'plane', 20, 'Explore wildlife, Skydiving', 'Sydney Opera House, Bondi Beach'),
('Austin', 'TX', 'USA', 1500, 'mild to hot', 'plane', 4, 'Live music', 'Texas State Capitol, Barton Springs Pool'),
('Montreal', NULL, 'Canada', 1200, 'warm to cold', 'car', 6, 'Visit museums', 'Notre-Dame Basilica, Mount Royal Park'),
('Tokyo', NULL, 'Japan', 4000, 'four seasons', 'plane', 13, 'Visit temples, Eat sushi', 'Tsukiji Fish Market, Shibuya Crossing'),
('Philadelphia', 'PA', 'USA', 1000, 'hot to cold', 'train', 1, 'Hockey game, Cheesesteaks', 'Independence Hall, Liberty Bell'),
('Istanbul', NULL, 'Turkey', 2500, 'mild to hot', 'plane', 10, 'Rock climbing, Paddle boarding', 'Grand Bazaar, Blue Mosque'),
('Nashville', 'TN', 'USA', NULL, NULL, 'car', 11, NULL, 'Grand Ole Opry, Ryman Auditorium'),
('Newport', 'RI', 'USA', 1000, 'cool', 'train', 3, 'Biking, Tour mansions', 'The Breakers, Cliff Walk'),
('Athens', NULL, 'Greece', 3000, 'mild to hot', 'plane', 11, 'Explore ruins, Eat food', 'Acropolis, Parthenon, Santorini'),
('Dubai', NULL, 'United Arab Emirates', 3000, 'hot', 'plane', 13, 'Desert safari, Shopping', 'Dubai Mall, Palm Jumeriah'),
('Toronto', NULL, 'Canada', NULL, NULL, NULL, NULL, 'Enjoy culture, Fine dining', 'CN Tower, Royal Ontario Museum'),
('Miami', 'FL', 'USA', 3000, 'hot', 'plane', 3, 'Relax, Eat Cuban food', 'Everglades National Park, Little Havana'),
('Honolulu', 'HI', 'USA', 3000, 'warm', 'plane', 10, 'Surfing, Snorkeling', 'Pearl Harbor, Waikiki Beach'),
('Montauk', 'NY', 'USA', 1500, 'warm to cool', 'car', 3, 'Surfing, Fishing', 'Montauk Point Lighthouse'),
('Prague', NULL, 'Czech Republic', 2000, 'mild to cold', 'plane', 8, 'Sample beer, Walking tour', 'Prague Castle, Charles Bridge, St. Vitus'),
('Barcelona', NULL, 'Spain', 2500, 'warm', 'plane', 8, 'Eat tapas, Visit parks', 'La Sangrada Familia'),
('New York', 'NY', 'USA', 500, NULL, NULL, 0, 'See Broadway show, Visit museums', 'Empire State Building, Statue of Liberty'),
('Seattle', 'WA', 'USA', 2000, 'rainy', 'plane', 6, 'Explore market, Visit museums', 'Space Needle, Museum of Pop Culture'),
('Zagreb', NULL, 'Croatia', 3000, 'warm to cold', 'plane', 10, 'Visit museums, Eat food', 'St. Mark''s Church'),
('Cape Town', NULL, 'South Africa', 3000, 'mild to warm', 'plane', 15, 'Hiking, Visit penguins', 'Robben Island, V and A Waterfront'),
('Vancouver', NULL, 'Canada', 2500, 'mild to cool', 'plane', 6, 'Skiing, Hiking', 'Stanley Park, Whistler'),
('Quebec City', NULL, 'Canada', NULL, NULL, 'car', 8, NULL, 'Old Quebec, Montmorency Falls'),
('Warsaw', NULL, 'Poland', 2500, NULL, 'plane', 9, NULL, 'Old Town Market Square'),
('Auckland', NULL, 'New Zealand', 3500, 'mild to warm', 'plane', 20, 'Water sports, Biking', 'Sky Tower, Waiheke Island'),
('Las Vegas', 'NV', 'USA', 2500, 'mild to hot', 'plane', 6, 'Visit casinos, See shows', 'The Strip, Red Rock Canyon'),
('Zurich', NULL, 'Switzerland', NULL, NULL, 'plane', 8, 'Enjoy lake, Visit museums', 'Bahnhofstrasse, Swiss National Museum'),
('San Diego', 'CA', 'USA', 2000, 'warm', 'plane', 6, 'Relax on beach', 'San Diego Zoo, La Jolla Cove'),
('Zanzibar', NULL, 'Tanzania', 4000, NULL, NULL, NULL, NULL, 'Stone Town, Nungwi Beach'),
('Denver', 'CO', 'USA', NULL, NULL, NULL, NULL, 'Skiing, Mountain biking', 'Red Rocks, Denver Mint'),
('Marseille', NULL, 'France', 2500, 'mild to hot', 'plane', 8, NULL, 'Vieux-Port, MuCEM'),
('San Jose', NULL, 'Costa Rica', 2000, 'warm, rainy', 'plane', 5, 'Hiking, Ziplining', 'Jade Museum, La Fortuna Waterfall');
