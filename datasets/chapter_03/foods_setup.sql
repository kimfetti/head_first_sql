-- Drop database if exists (so script is re-runnable)
DROP DATABASE IF EXISTS foods;
CREATE DATABASE foods;
USE foods;

-- ----------------------------
-- Table: fruits
-- ----------------------------
DROP TABLE IF EXISTS fruits;

CREATE TABLE fruits (
    name VARCHAR(20) NOT NULL,
    serving_g INT,
    calories INT,
    price DEC(4, 2),
    description VARCHAR(50),
    flavor VARCHAR(30)
);

INSERT INTO fruits (name, serving_g, calories, price, description, flavor) VALUES
('apple', 180, 95, 1.00, 'various colors, round with smooth skin', 'sweet, slightly tart'),
('banana', 120, 105, 0.25, 'yellow, long and curved', 'sweet, creamy'),
('orange', 130, 60, 0.80, 'orange and round with thick peel', 'sweet, citrusy'),
('lime', 65, 20, 0.75, 'green, small and round', 'tangy, bitter'),
('strawberry', 160, 50, 1.75, 'red and small with seeds on surface', 'sweet, slightly tart'),
('watermelon', 150, 45, 0.25, 'green rind with pink flesh, large', 'sweet, juicy'),
('lemon', 60, 20, 0.60, 'yellow and oval', 'sour, tangy'),
('pineapple', 160, 80, 1.00, 'yellow flesh with spiky exterior', 'sweet, tangy'),
('grapes', 150, 100, 0.50, 'green or purple, small berries in a cluster', 'sweet, juicy'),
('avocado', 100, 120, 1.00, 'green, oval and bumpy', 'creamy, mild'),
('mango', 165, 100, 1.00, 'yellow flesh with smooth skin', 'sweet'),
('kiwi', 100, 60, 0.55, 'green flesh with brown, fuzzy exterior', 'tangy, sweet');

-- ----------------------------
-- Table: boosts
-- ----------------------------
DROP TABLE IF EXISTS boosts;

CREATE TABLE boosts (
    name VARCHAR(30),
    category VARCHAR(30),
    price DEC(4, 2),
    calories INT,
    fat_g INT,
    benefits VARCHAR(100)
);

INSERT INTO boosts (name, category, price, calories, fat_g, benefits) VALUES
('chia seeds', 'Healthy Fats', 0.30, 135, 9, 'Rich in omega-3 fatty acids'),
('flaxseeds', 'Healthy Fats', NULL, 120, 12, 'Rich in omega-3 fatty acids'),
('matcha', 'Antioxidant', 0.50, 3, 1, 'Antioxidants, mild caffeine boost'),
('ginger', 'Spices', 0.10, 5, 1, 'Anti-inflammatory'),
('protein power', 'Protein', 1.00, 120, 2, 'Concentrated source of protein'),
('turmeric', 'Spices', 0.25, 30, 1, 'Anti-inflammatory, antioxidants'),
('honey', NULL, 0.20, 65, 0, 'Natural sweetener'),
('cinnamon', 'Spices', 0.05, 5, 0, 'Anti-inflammatory, antioxidants');
