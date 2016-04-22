CREATE DATABASE healthnfood;

CREATE TABLE Users(
    username VARCHAR(50) NOT NULL PRIMARY KEY,
    passwrd VARCHAR(50) NOT NULL,
	fName VARCHAR(30) NOT NULL,
    lName VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL,
    country VARCHAR(20) NOT NULL,
    gender CHAR NOT NULL
    age VARCHAR(2) NOT NULL,
    weight VARCHAR(5) NOT NULL,
    height VARCHAR(5) NOT NULL,
    activity VARCHAR(30) NOT NULL,
    goal VARCHAR(39) NOT NULL
);

CREATE TABLE Posts (
	id INT(6) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    comment VARCHAR(150) NOT NULL,
    FOREIGN KEY (username) REFERENCES Users(username)
);

CREATE TABLE Food (
    id INT(6) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    type VARCHAR(50) NOT NULL,
    product VARCHAR(50) NOT NULL,
    brand VARCHAR(50),
    measure VARCHAR(10),
    portion FLOAT(6) NOT NULL,
    carbs FLOAT(6) NOT NULL,
    protein FLOAT(6) NOT NULL,
    fat FLOAT(6) NOT NULL,
);

INSERT INTO Food(name, type, product, measure, portion, calories,  fat, carbs, protein)
VALUES  ('Beans','Beans & Legumes', 'Beans', 'g', 100, 151, 5.15, 21.39, 5.54),
        ('Black Beans','Beans & Legumes', 'Beans', 'g', 100, 91, 0.29, 16.56, 6.03),
        ('Refried Beans (Canned)','Beans & Legumes', 'Beans', 'g', 100, 94, 1.26, 15.53, 5.49),
        ('Cooked Lentils','Beans & Legumes', 'Lentils', 'g', 100, 165, 6.76, 18.73, 8.39),
        ('Cooked Lentils','Beans & Legumes', 'Lima Beans', 'g', 100, 113, 0.86, 20.17, 6.84),
        ('Quinoa (Cooked)','Beans & Legumes', 'Quinoa', 'g', 100, 143, 2.22, 26.35, 5.01),
        ('Firm Silken Tofu','Beans & Legumes', 'Tofu', 'g', 100, 62, 2.7, 2.4, 6.9),
        
        ('Bagel','Breads & Cereals', 'Bagels', 'piece', 1, 270, 1.7, 53.02, 10.52),
        ('Multigrain Bagel','Breads & Cereals', 'Bagels', 'piece', 1, 272, 1.34, 55.08, 11.84),
        ('Toasted Bagel','Breads & Cereals', 'Bagels', 'piece', 1, 1.7, 56.54, 11.03),
        ('Biscuit','Breads & Cereals', 'Breads', 'piece', 1, 212, 9.78, 26.76, 4.20),         
        ('Wheat Bread','Breads & Cereals', 'Breads', 'slice', 1, 67, 1.07, 12.26, 2.37),
        ('Multigrain Bread','Breads & Cereals', 'Breads', 'slice', 1, 65, 0.99, 12.06, 2.6),
        ('White Bread','Breads & Cereals', 'Breads', 'slice', 1, 66, 0.82, 12.65, 1.91),
        ('Hamburger Bun','Breads & Cereals', 'Buns', 'piece', 1, 120, 1.86, 21.26, 4.08),
        ('Hotdog Bun','Breads & Cereals', 'Buns', 'piece', 1, 120, 1.86, 21.26, 4.08),         
        ('Croissant','Breads & Cereals', 'Breads', 'piece', 1, 231, 11.97, 26.11, 4.67),
        ('Garlic Bread','Breads & Cereals', 'Garlic Bread', 'piece', 1, 96, 3.71, 13.23, 2.25),
        ('Toasted Garlic Bread','Breads & Cereals', 'Garlic Bread', 'piece', 1, 96, 3.65, 13.03, 2.22),
        ('Pita Bread','Breads & Cereals', 'Breads', 'piece', 1, 124, 0.54, 25.06, 4.1),
        ('Granola','Breads & Cereals', 'Granola', 'g', 100, 408, 11.03, 72.39, 9.22),
        ('Granola cereal','Breads & Cereals', 'Granola', 'g', 100, 490, 24.36, 52.95, 14.87),
        ('Muesli (Dried Fruit and Nuts)','Breads & Cereals', 'Granola', 'g', 100, 340, 4.9, 77.8, 9.7),
        ('Oats','Breads & Cereals', 'Oats', 'g', 100, 389, 6.9, 66.27, 16.89),
        ('Instant Oatmeal','Breads & Cereals', 'Oats', 'g', 100, 213, 2.81, 42.63, 5.76),
        ('Toasted Whole Wheat Bread','Breads & Cereals', 'Toast', 'slice', 1, 68, 1.06, 12.32, 2.39),
        ('Toasted White Bread','Breads & Cereals', 'Toast', 'slice', 1, 64, 0.88, 11.97, 1.98),
        ('Toasted Multigrain Bread','Breads & Cereals', 'Toast', 'slice', 1, 65, 0.98, 12.1, 2.62),
        ('Corn Tortilla','Breads & Cereals', 'Tortillas', 'piece', 1, 52, 1.23, 18.24, 2.66),
        ('Flour Tortilla','Breads & Cereals', 'Tortillas', 'piece', 1, 159, 3.95, 26.19, 4.23),


        ('American Cheese','Cheese, Milk & Dairy', 'Cheese', 'g', 100, 337, 26.05, 6.94, 18.94),
        ('Blue Cheese','Cheese, Milk & Dairy', 'Cheese', 'g', 100, 353, 28.74, 2.34, 21.4),
        ('Brie Cheese','Cheese, Milk & Dairy', 'Cheese', 'g', 100, 334, 27.68, 0.45, 20.75),
        ('Camembert Cheese','Cheese, Milk & Dairy', 'Cheese', 'g', 100, 300, 24.26, 0.46, 19.8),
        ('Cheddar Cheese','Cheese, Milk & Dairy', 'Cheese', 'g', 100, 403, 33.14, 1.28, 24.9v),
        ('Cottage Cheese','Cheese, Milk & Dairy', 'Cheese', 'g', 100, 103, 4.51, 2.68, 12.49),
        ('Cream Cheese','Cheese, Milk & Dairy', 'Cheese', 'g', 100, 349, 34.87, 2.66, 7.55),
        ('Cottage Cheese','Cheese, Milk & Dairy', 'Cheese', 'g', 100, 103, 4.51, 2.68, 12.49),
        ('Goat Cheese','Cheese, Milk & Dairy', 'Cheese', 'g', 100, 361, 28.85, 1.87, 23.52),
        ('Gouda Cheese','Cheese, Milk & Dairy', 'Cheese', 'g', 100, 101, 7.78, 0.63, 7.07),
        ('Mozzarella Cheese','Cheese, Milk & Dairy', 'Cheese', 'g', 100, 302, 20.03, 3.83, 25.96),
        ('Muenster Cheese','Cheese, Milk & Dairy', 'Cheese', 'g', 100, 368, 30.04, 1.12, 23.41),
        ('Parmesan Cheese','Cheese, Milk & Dairy', 'Cheese', 'g', 100, 415, 27.34, 3.41, 37.86),
        ('Ricotta Cheese','Cheese, Milk & Dairy', 'Cheese', 'g', 100, 339, 19.46, 12.64, 28.02),
        ('Roman Cheese','Cheese, Milk & Dairy', 'Cheese', 'g', 100, 387, 26.94, 3.63, 31.8),
        ('Swiss Cheese','Cheese, Milk & Dairy', 'Cheese', 'g', 100, 380, 27.8, 5.38, 26.93),
        
        ('Butter (Salted)','Cheese, Milk & Dairy', 'Butter', 'g', 100, 717, 81.11, 0.06, 0.85),







 







