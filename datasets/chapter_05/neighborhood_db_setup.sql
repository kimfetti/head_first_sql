-- Drop database if exists (so script is re-runnable)
DROP DATABASE IF EXISTS neighborhood_db;
CREATE DATABASE neighborhood_db;
USE neighborhood_db;

-- ----------------------------
-- Table 1: restaurants
-- ----------------------------
DROP TABLE IF EXISTS restaurants;

CREATE TABLE restaurants (
    name VARCHAR(30),
    address VARCHAR(50),
    type VARCHAR(20),
    when_open VARCHAR(20)
);

INSERT INTO restaurants (name, address, type, when_open) VALUES
('Cap’n Cluck’s', '11 Rooster Way', 'Chicken', 'Evenings'),
('Eye Opener', '200 Dataville’s Plaza', 'Coffee', 'Mornings'),
('Broadway Diner', '123 Retro Drive', 'Diner', 'All day'),
('Close-by Burger', '440 Harrison Avenue', 'Burgers', 'Evenings'),
('Pizzarama', '99 Pepperoni Place', 'Pizza', 'Evenings'),
('Sunbill', NULL, 'Coffee', 'Mornings'),
('Peas, Please', '730 Harrison Avenue', 'Vegan', 'All day'),
('Crack of Dawn', '1000 Sunshine Street', 'Diner', 'Mornings'),
('Montagu’s', '210 Dataville’s Plaza', 'Deli', 'All day'),
('Burger Shack', '17 Pickle Alley', 'Burgers', 'Evenings'),
('Il Cibo', '6 Florence Vista', 'Italian', 'Evenings'),
('Pie of My Eye', '5865 Cheesy Circle', 'Pizza', NULL);

-- ----------------------------
-- Table 2: stores
-- ----------------------------
DROP TABLE IF EXISTS stores;

CREATE TABLE stores (
    name VARCHAR(25),
    category VARCHAR(20),
    neighborhood VARCHAR(20),
    employees INT,
    owner VARCHAR(25)
);

INSERT INTO stores (name, category, neighborhood, employees, owner) VALUES
('Mechanic Masters', 'car repair', 'Index Junction', 10, 'Monty Bristow'),
('24/7 FreshMart', 'grocery', 'Querytown', 35, 'Sally Sandwich'),
('Lit Jungle', 'bookstore', 'Querytown', 8, 'Tim Holmes'),
('Vintage Vibe', 'boutique', 'DataU', 3, 'Celeste Monroe'),
('College Campout', 'music', 'DataU', 19, 'Angelica Bass'),
('Paw Prints', 'pet supplies', 'Index Junction', 9, 'Mary Pawsley'),
("1 'Do 2 Dye", 'hair salon', 'Crud Row', 10, 'Lily Luxe'),
("Nature's Basket", 'grocery', 'Crud Row', 8, 'Henri Haricot'),
('Curl Corner', 'hair salon', 'DataU', 7, 'Gabriella Lowe'),
('Campus Books', 'bookstore', 'DataU', 12, 'DataU'),
('Quick Snack', 'grocery', 'DataU', 10, 'DataU'),
('Tool Tavern', 'hardware', 'Crud Row', 14, 'Allen Anderson'),
('Urban Charm', 'boutique', 'Querytown', 4, 'Celeste Monroe'),
('Auto Go', 'car repair', 'Crud Row', 18, 'Sterling Mason'),
('Market Masters', 'grocery', 'Index Junction', 25, 'Monty Bristow'),
('Trombone Treble', 'music', 'Querytown', 6, 'Josh Brenton'),
('Bill''s Barbershop', 'hair salon', 'DataU', 7, 'Bill Bryan'),
('Page Palace', 'bookstore', 'Querytown', 5, 'Molly Marple'),
('Novel Nook', 'bookstore', 'Querytown', 3, 'Sandra Spade'),
('Waggers', 'pet supplies', 'Querytown', 9, 'Josh Brenton'),
('Auto Stop', 'car repair', 'Querytown', 15, 'Sterling Mason'),
('Elegant Essentials', 'boutique', 'Index Junction', 6, NULL),
('Mystery Masters', 'bookstore', 'Index Junction', 7, 'Monty Bristow'),
('99 Bolts', 'hardware', 'Index Junction', 26, 'Gus Gearman'),
('Zany Zoo', 'pet supplies', 'Index Junction', 7, 'Tommy King');
