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
        ('Butter (Unsalted)','Cheese, Milk & Dairy', 'Butter', 'g', 100, 717, 81.11, 0.06, 0.85),
        ('Buttermilk (Lowfat)','Cheese, Milk & Dairy', 'Butter', 'g', 100, 40, 0.88, 4.79, 3.31),
        ('Margarine','Cheese, Milk & Dairy', 'Margarine', 'g', 100, 526, 59.17, 0, 0.6),
        ('Milk','Cheese, Milk & Dairy', 'Milk', 'ml', 250, 129, 5.16, 12.14, 8.48),
        ('Whole Milk','Cheese, Milk & Dairy', 'Milk', 'ml', 250, 155, 8.38, 11.65, 8.3),
        ('Low Fat Milk','Cheese, Milk & Dairy', 'Milk', 'ml', 250, 108, 2.5, 12.87, 8.69),
        ('Silk Milk (Nonfat)','Cheese, Milk & Dairy', 'Milk', 'ml', 250, 88, 0.45, 12.12, 8.52),
        ('Light Cream','Cheese, Milk & Dairy', 'Cream', 'tbsp', 1, 29, 2.9, 0.55, 0.4),
        ('Coffee or Table Cream','Cheese, Milk & Dairy', 'Cream', 'tbsp', 1, 29, 2.9, 0.55, 0.4),
        ('Sour Cream','Cheese, Milk & Dairy', 'Sour Cream', 'tbsp', 1, 31, 3.02, 0.61, 0.46),
        ('Light Sour Cream','Cheese, Milk & Dairy', 'Sour Cream', 'tbsp', 1, 22, 1.7, 1.14, 0.56),
        ('Yogurt','Cheese, Milk & Dairy', 'Yogurt', 'g', 100, 104, 2.6, 17.41, 2.8),
        ('Plain Yogurt','Cheese, Milk & Dairy', 'Yogurt', 'g', 100, 63, 1.55, 7.04, 5.25),
        

        ('Beer','Drinks', 'Alcohol', 'ml', 100, 44, 0, 3.6, 0.47),
        ('Light Beer','Drinks', 'Alcohol', 'ml', 100, 29, 0, 1.64, 0.24),
        ('Table Wine','Drinks', 'Alcohol', 'ml', 100, 84, 0, 2.71, 0.07),
        ('Margarita','Drinks', 'Alcohol', 'cocktail', 1, 168, 0.08, 10.67, 0.05),
        ('Mojito','Drinks', 'Alcohol', 'cocktail', 1, 217, 0.08, 24.94, 0.15),
        ('Gin and Tonic','Drinks', 'Alcohol', 'cocktail', 1, 171, 0.08, 10.67, 0.05),
        ('Vodka','Drinks', 'Alcohol', 'shot', 1, 64, 0, 0, 0),
        ('Cappuccino','Drinks', 'Cappuccino', 'ml', 100, 31, 1.67, 2.45, 1.71),
        ('Decaffeinated Cappuccino','Drinks', 'Cappuccino', 'ml', 100, 31, 1.67, 2.45, 1.71),
        ('Nonfat Cappuccino','Drinks', 'Cappuccino', 'ml', 100, 19, 0.11, 2.62, 1.82),
        ('Coffee','Drinks', 'Coffee', 'ml', 100, 1, 0.02, 0.04, 0.12),
        ('Latte Coffee','Drinks', 'Coffee', 'ml', 100, 28, 1.16, 2.61, 1.86),
        ('Espresso Coffee','Drinks', 'Coffee', 'ml', 100, 2, 0.18, 0, 0.12),
        ('Coffee (Brewed From Grounds)','Drinks', 'Coffee', 'ml', 100, 1, 0.02, 0, 0.12),
        ('Iced Coffee with Milk','Drinks', 'Coffee', 'ml', 100, 4, 0.08, 0.48, 0.18),
        ('Iced Coffee with Cream and Sugar','Drinks', 'Coffee', 'ml', 100, 28, 0.8, 5.17, 0.21),
        ('Latte Coffee','Drinks', 'Coffee', 'ml', 100, 28, 1.16, 2.61, 1.86),
        ('Energy Drink','Drinks', 'Energy Drink', 'ml', 100, 46, 0.08, 11.1, 0.25),
        ('Apple Juice','Drinks', 'Juice', 'ml', 100, 49, 0.12, 12.24, 0.06),
        ('Orange Juice','Drinks', 'Juice', 'ml', 100, 47, 0.21, 10.9, 0.73),
        ('Cranberry Juice','Drinks', 'Juice', 'ml', 100, 58, 0.11, 14.45, 0),
        ('Grape Juice','Drinks', 'Juice', 'ml', 100, 64, 0.08, 15.78, 0.59),
        ('Milk','Drinks', 'Milk', 'ml', 250, 129, 5.16, 12.14, 8.48),
        ('Whole Milk','Drinks', 'Milk', 'ml', 250, 155, 8.38, 11.65, 8.3),
        ('Low Fat Milk','Drinks', 'Milk', 'ml', 250, 108, 2.5, 12.87, 8.69),
        ('Silk Milk (Nonfat)','Drinks', 'Milk', 'ml', 250, 88, 0.45, 12.12, 8.52),
        ('Soda','Drinks', 'Soda', 'ml', 100, 40, 0.01, 10.24, 0.07),
        ('Diet Soda','Drinks', 'Soda', 'ml', 100, 1, 0.02, 0.24, 0.11),
        ('Cola Soda (with Caffeine)','Drinks', 'Soda', 'ml', 100, 38, 0.02, 9.92, 0.07),
        ('Green Tea','Drinks', 'Tea', 'ml', 100, 1, 0, 0.2, 0),
        ('Black Tea','Drinks', 'Tea', 'ml', 100, 0, 0, 0, 0),
        ('Herbal Tea','Drinks', 'Tea', 'ml', 100, 2, 0, 0.47, 0),
        ('Tea (Brewed)','Drinks', 'Tea', 'ml', 100, 1, 0, 0.2, 0),
        ('Mixed Vegetable Juice','Drinks', 'Vegetable Juice', 'ml', 100, 30, 0.25, 6.32, 1.55),
        ('Tomato Juice','Drinks', 'Vegetable Juice', 'ml', 100, 41, 0.12, 10.3, 1.85),
        ('Carrot Juice','Drinks', 'Vegetable Juice', 'ml', 100, 40, 0.15, 9.27, 0.95),
        ('Water','Drinks', 'Water', 'ml', 100, 0, 0, 0, 0),
        ('Water (Bottled)','Drinks', 'Water', 'ml', 100, 0, 0, 0, 0),
        ('Spring Water','Drinks', 'Water', 'ml', 100, 0, 0, 0, 0),



        ('Egg Whites','Eggs', 'Egg Whites', 'egg', 1, 17, 0.06, 0.24, 3.6),
        ('Cooked Egg White','Egg Whites', 'Egg', 'egg', 1, 17, 0.06, 0.24, 3.6),
        ('Egg Yolk','Eggs', 'Egg Yolk', 'egg', 1, 55, 4.51, 0.61, 2.7),
        ('Cooked Egg Yolk','Eggs', 'Egg Yolk', 'egg', 1, 55, 4.49, 0.61, 2.7),
        ('Egg','Eggs', 'Egg', 'egg', 1, 74, 4.97, 0.38, 6.29),
        ('Boiled Egg','Eggs', 'Egg', 'egg', 1, 77, 5.28, 0.56, 6.26),
        ('Scrambled Egg','Eggs', 'Egg', 'egg', 1, 101, 7.45, 1.34, 6.76),
        ('Fried Egg','Eggs', 'Egg', 'egg', 1, 92, 7.04, 0.4, 6.27),
        



        ('Hamburger (Single Patty with Condiments)','Fast Food', 'Burgers', 'burger', 1, 272, 9.77, 34.25, 12.32),
        ('Cheeseburger (Single Patty with Condiments)','Fast Food', 'Burgers', 'burger', 1, 295, 14.15, 26.53, 15.96),
        ('Cheeseburger with Bacon and Condiments','Fast Food', 'Burgers', 'burger', 1, 608, 36.76, 37.13, 32),
        ('Burrito with Beef','Fast Food', 'Burritos', 'burrito', 1, 721, 33.42, 56.48, 45.03),
        ('Burrito with Chicken','Fast Food', 'Burritos', 'burrito', 1, 455, 13.92, 40.79, 39.37),
        ('Meatless Burritos','Fast Food', 'Burritos', 'burrito', 1, 224, 6.75 , 35.72 , 7.03),
        ('Chicken Nuggets','Fast Food', 'Nuggets', 'nugget', 1, 48, 3.01, 2.61, 2.49),
        ('Chicken McNuggets','Fast Food', 'Nuggets', 'nugget', 4, 190, 12, 12, 9),
        ('Chicken Curry','Fast Food', 'Curry', 'g', 100, 124, 6.67, 4.74, 11.47),
        ('Beef Curry','Fast Food', 'Curry', 'g', 100, 184, 12.96, 5.8, 11.69),
        ('Lamb Curry','Fast Food', 'Curry', 'g', 100, 109, 5.86, 1.57, 11.96),
        ('French Fries','Fast Food', 'French Fries', 'g', 100, 274, 14.06, 35.66, 3.48),
        ('Potato French Fries (from Frozen)','Fast Food', 'French Fries', 'g', 100, 112, 5.96, 13.14, 1.32),
        ('Hot Dog','Fast Food', 'Hot Dogs', 'hot dog', 1, 175, 14.89, 2.54, 7.22),
        ('Beef Hot Dog','Fast Food', 'Hot Dogs', 'hot dog', 1, 194, 17.32, 2.46, 6.82),
        ('Nachos with Cheese','Fast Food', 'Nachos', 'g', 100, 306, 16.77, 32.15, 8.05),
        ('Cheese Pizza','Fast Food', 'Pizza', 'slice', 1, 237, 10.1, 26.08, 10.6),
        ('Pizza with Meat and Vegetables','Fast Food', 'Pizza', 'slice', 1, 276, 12.61, 26.08, 10.6),
        ('Pizza with Meat and Fruits','Fast Food', 'Pizza', 'slice', 1, 237, 10.1, 26.08, 10.6),



        ('Canned Anchovy','Fish & Seafood', 'Anchovies', 'anchovy', 1, 8, 0.39, 0, 1.16),
        ('Fried Calamari','Fish & Seafood', 'Calamari', 'piece', 1, 12, 0.21, 0.96, 1.47),
        ('Baked or Broiled Calamari','Fish & Seafood', 'Calamari', 'piece', 1, 15, 0.52, 0.42, 2.1),
        ('Clams','Fish & Seafood', 'Clams', 'piece', 1, 11, 0.14, 0.37, 1.85),
        ('Cooked Clams','Fish & Seafood', 'Clams', 'piece', 1, 23, 1, 1.38, 1.86),
        ('Steamed or Boiled Clams','Fish & Seafood', 'Clams', 'piece', 1, 11, 0.14, 0.37, 1.85),
        ('Cod','Fish & Seafood', 'Cod', 'g', 100 , 211, 10.84, 8.25, 19.2),
        ('Baked or Broiled Cod','Fish & Seafood', 'Cod', 'g', 100 , 122, 3.59, 0.41, 19.2),
        ('Crab','Fish & Seafood', 'Crab', 'g', 100 , 119, 2.08, 0, 23.64),
        ('Baked or Broiled Crab','Fish & Seafood', 'Crab', 'g', 100 , 119, 2.08, 0, 23.64),
        ('Canned Crab','Fish & Seafood', 'Crab', 'g', 100 , 99, 2.08, 0, 23.64),
        ('Fish','Fish & Seafood', 'Fish', 'g', 100, 84, 0.92, 0, 17.76),
        ('Baked or Broiled Fish','Fish & Seafood', 'Fish', 'g', 100, 126, 3.44, 0.33, 21.94),
        ('Grilled Fish','Fish & Seafood', 'Fish', 'g', 100, 123, 1.33, 0.31, 25.53),
        ('Tilapia (Fish)','Fish & Seafood', 'Fish', 'g', 100, 96, 1.7, 0, 20.08,
        ('Lobster','Fish & Seafood', 'Lobster', 'g', 100, 97, 0.58, 1.27, 20.33),
        ('Steamed or Boiled Lobster','Fish & Seafood', 'Lobster', 'g', 100, 114, 0.68, 1.5, 23.99),
        ('Mussels','Fish & Seafood', 'Lobster', 'piece', 1, 14, 0.36, 0.59, 1.9),
        ('Blue Mussels','Fish & Seafood', 'Lobster', 'piece', 1, 14, 0.36, 0.59, 1.9),
        ('Cooked Mussels','Fish & Seafood', 'Lobster', 'piece', 1, 12, 0.66, 0.35, 1.1),
        ('Octopus','Fish & Seafood', 'Octopus', 'g', 100, 82, 1.04, 2.2, 14.91),
        ('Cooked Octopus','Fish & Seafood', 'Octopus', 'g', 100, 188, 8.1 10.7, 16.94),
        ('Steamed Octopus','Fish & Seafood', 'Octopus', 'g', 100, 163, 2.06, 4.36, 29.57),
        ('Salmon','Fish & Seafood', 'Salmon', 'g', 100, 146, 5.93, 0, 21.62),
        ('Baked or Broiled Salmon','Fish & Seafood', 'Salmon', 'g', 100, 171, 7.56, 0.49, 23.97),
        ('Sardines','Fish & Seafood', 'Sardines', 'g', 100, 217, 12.37, 0, 24.58),
        ('Sardines','Fish & Seafood', 'Sardines', 'g', 100, 217, 12.37, 0, 24.58),
        ('Sardines in Oil (Canned)','Fish & Seafood', 'Sardines', 'g', 100, 217, 12.37, 0, 24.58),
        ('Sardines with Tomato-Based Sauce','Fish & Seafood', 'Sardines', 'g', 100, 217, 10.37, 0, 24.58),
        ('Shrimp','Fish & Seafood', 'Shrimp', 'piece', 1, 7, 0.12, 0.06, 1.38),
        ('Baked or Broiled Shrimp','Fish & Seafood', 'Shrimp', 'piece', 1, 7, 0.2, 0.06, 1.3),
        ('Fried Shrimp','Fish & Seafood', 'Shrimp', 'piece', 1, 27, 1.35, 1.29, 2.28),
        ('Tuna in Water (Canned)','Fish & Seafood', 'Tuna', 'g', 100, 116, 0.82, 0, 25.51),
        ('Tuna in Oil (Canned)','Fish & Seafood', 'Tuna', 'g', 100, 198, 8.21, 0, 29.13),



        ('Red Apple','Fruits', 'Apples', 'piece', 1, 72, 0.23, 19.06, 0.36),
        ('Yellow Apple','Fruits', 'Apples', 'piece', 1, 72, 0.23, 19.06, 0.36),
        ('Green Apple','Fruits', 'Apples', 'piece', 1, 72, 0.23, 19.06, 0.36),
        ('Dried Apple','Fruits', 'Apples', 'g', 100, 243, 0.32, 65.89, 0.93),
        ('Avocado','Fruits', 'Avocado', 'g', 100, 160, 14.66, 8.53, 2),
        ('Guacamole','Fruits', 'Avocado', 'g', 100, 157, 14.66, 8.53, 2),
        ('Banana','Fruits', 'Banana', 'piece', 1, 105, 0.39, 26.95, 1.29),
        ('Berries','Fruits', 'Berries', 'g', 100, 33, 0.3, 7.98, 0.68),
        ('Strawberries','Fruits', 'Berries', 'g', 100, 32, 0.3, 7.68, 0.68),
        ('Blueberries','Fruits', 'Berries', 'g', 100, 57, 0.3, 14.49, 0.74),
        ('Blackberries','Fruits', 'Berries', 'g', 100, 43, 0.5, 9.61, 1.39),
        ('Raspberries','Fruits', 'Berries', 'g', 100, 52, 0.65, 11.61, 1.2),
        ('Coconut','Fruits', 'Coconut', 'g', 100, 354, 33.49, 15.23, 3.33),
        ('Dried Coconut','Fruits', 'Coconut', 'g', 100, 660, 64.53, 23.65, 6.88),
        ('Coconut Water','Fruits', 'Coconut', 'ml', 100, 19, 0.2, 3.71, 0.72),        
        ('Fig','Fruits', 'Figs', 'piece', 1, 37, 0.15, 9.59, 0.38),
        ('Dried Fig','Fruits', 'Figs', 'g', 100, 249, 0.93, 63.87, 3.3),
        ('Grapefruits','Fruits', 'Grapefruits', 'piece', 1, 82, 0.26, 20.68, 1.61),
        ('Grapes','Fruits', 'Grapes', 'g', 100, 69, 0.16, 18.1, 0.72),
        ('Kiwi Fruit','Fruits', 'Kiwi Fruit', 'piece', 1, 46, 0.4, 11.14, 0.87),
        ('Litchis','Fruits', 'Litchis', 'piece', 1, 6, 0.04, 1.59, 0.08),
        ('Dried Litchis', 'Fruits', 'Litchis', 'g', 100, 277, 1.2, 70.7, 3.8),
        ('Mandarin Oranges','Fruits', 'Mandarin Oranges', 'piece', 1, 45, 0.26, 11.21, 0.68),
        ('Mangos','Fruits', 'Mangos', 'g', 100, 65, 0.27, 17, 0.51),
        ('Dried Mango','Fruits', 'Mangos', 'g', 100, 314, 0.78, 81.61, 1.48),
        ('Watermelon','Fruits', 'Melons', 'g', 100, 30, 0.15, 7.55, 0.61),
        ('Honeydew Melons','Fruits', 'Melons', 'g', 100, 36, 0.14, 9.09, 0.54),
        ('Cantaloupe Melons','Fruits', 'Melons', 'g', 100, 34, 0.19, 8.16, 0.84),
        ('Oranges','Fruits', 'Oranges', 'piece', 1, 62, 0.16, 15.39, 1.23),
        ('Papaya','Fruits', 'Papaya', 'g',100 39, 0.14, 9.81, 0.61),
        ('Dried Papaya','Fruits', 'Papaya', 'g', 100, 258, 0.93, 64.97, 4.04),
        ('Peach','Fruits', 'Peaches', 'piece', 1, 38, 0.24, 9.35, 0.89),
        ('Peaches (Canned)','Fruits', 'Peaches', 'g', 100, 24, 0.06, 6.11, 0.44),
        ('Pear','Fruits', 'Pears', 'piece', 1, 96, 0.2, 25.66, 0.63),
        ('Pineapple','Fruits', 'Pineapple', 'g', 100, 48, 0.12, 12, 0.54),
        ('Pineapple (Canned)','Fruits', 'Pineapple', 'g', 100, 32, .09, 8, .43),
        ('Plums','Fruits', 'Plums', 'piece', 1, 30, 0.18, 7.54, 0.46),
        ('Dried Plum','Fruits', 'Plums', 'piece', 1,20 , 0.03, 5.37, 0.18),
        ('Dried Prune','Fruits', 'Prunes', 'g', 100, 240, 0.38, 63.88, 2.18),
        ('Cooked Dried Prune','Fruits', 'Prunes', 'g', 100, 107, 0.16, 28.08, 0.96),
        


        ('Bacon','Meat', 'Bacon', 'slice', 1, 27, 2.09, 0.07, 1.85),
        ('Bacon (Fried, Cooked)','Meat', 'Bacon', 'slice', 1, 42, 3.18, 0.12, 3.03),
        ('Chicken Breast','Meat', 'Chicken', 'g', 100, 195, 7.72, 0, 29.55),
        ('Roasted Broiled or Baked Chicken Breast','Meat', 'Chicken', 'g', 100, 195, 7.72, 0, 29.55),
        ('Chicken Breast (Skin Not Eaten)','Meat', 'Chicken', 'g', 100, 164, 3.54, 0, 30.76),
        ('Chicken Drumstick','Meat', 'Chicken', 'g', 100, , , , ),
        ('Roasted Broiled or Baked Chicken Drumstick','Meat', 'Chicken', 'g', 100, 214, 11.06, 0, 26.8),
        ('Chicken Drumstick (Skin Not Eaten)','Meat', 'Chicken', 'g', 100, 171, 5.61, 0, 28.05),
        ('Chicken Thigh','Meat', 'Chicken', 'g', 100, 245, 15.36, 0, 24.85),
        ('Chicken Thigh (Skin Not Eaten)','Meat', 'Chicken', 'g', 100, 207, 10.79, 0, 25.72),
        ('Chicken Wing','Meat', 'Chicken', 'g', 100, 288, 19.3, 0, 26.64),
        ('Roasted Broiled or Baked Chicken Wing (Skin Eaten)','Meat', 'Chicken', 'g', 100, 288, 19.3, 0, 26.64),
        ('Chicken Wing (Skin Not Eaten)','Meat', 'Chicken', 'g', 100, 201, 8.06, 0, 30.21),
        ('Fried Chicken No Coating (Skin Eaten)','Meat', 'Chicken', 'g', 100, 260, 15.35, 0, 28.62),
        ('Grilled Chicken','Meat', 'Chicken', 'g', 100, 237, 13.49, 0, 27.07),
        ('Beef Steak','Meat', 'Beef', 'g', 100, 252, 15.01, 0, 27.29),
        ('Ground Beef (Cooked) ','Meat', 'Beef', 'g', 100, 276, 18.58, 0, 25.35),
        ('Corned Beef ','Meat', 'Beef', 'g', 100, 251, 18.98, 0.47, 18.17),
        ('Roast Beef ','Meat', 'Beef', 'g', 100, 267, 17.32, 0, 25.91),
        ('Beef Brisket ','Meat', 'Beef', 'g', 100, 288, 19.54, 0, 26.33),
        ('Beef Shortribs ','Meat', 'Beef', 'g', 100, 342, 26.15, 0, 24.84),
        ('Beef ','Meat', 'Beef', 'piece', 1, 310, 27.59, 0, 14.18),
        ('Sliced Ham','Meat', 'Cold Cuts', 'slice', 1, 46, 2.41, 1.07, 4.65),
        ('Salami','Meat', 'Cold Cuts', 'slice', 1, 58, 4.63, 0.52, 3.2)
        ('Beef Salami','Meat', 'Cold Cuts', 'slice', 1, 59, 5.11, 0.44, 2.9),
        ('Pepperoni','Meat', 'Cold Cuts', 'slice', 1, 26, 2.22, 0.22, 1.12),
        ('Lamb','Meat', 'Lamb', 'g', 100, 292, 20.77, 0, 24.32),
        ('Lamb Roast','Meat', 'Lamb', 'g', 100, 266, 18.15, 0, 23.93),
        ('Lamb Chop','Meat','Lamb', 'g', 100, 215, 10.48, 0, 28.17),
        ('Beef Meatballs','Meat', 'Meatballs', 'g', 100, 202, 13.16, 7.58, 12.41),
        ('Pork Meatballs','Meat', 'Meatballs', 'g', 100, 166, 6.98, 4.76, 19.83),
        ('Pork','Meat', 'Pork', 'g', 100, 271, 17.04, 0, 27.34),
        ('Pork Roast','Meat', 'Pork', 'g', 100, 247, 14.59, 0, 26.98),
        ('Ground Pork','Meat', 'Pork', 'g', 100, 263, 21.19, 0, 16.88),
        ('Pork Chop','Meat', 'Pork', 'g', 100, 250, 14.57, 0, 27.91),
        ('Pork Spareribs','Meat', 'Pork', 'g', 100, 395, 30.17, 0, 28.94),
        ('Beef Shortribs ','Meat', 'Ribs', 'g', 100, 342, 26.15, 0, 24.84),
        ('Beef Shortribs ','Meat', 'Ribs', 'g', 100, 342, 26.15, 0, 24.84),
        ('Turkey','Meat', 'Turkey', 'g', 100, 187, 7.02, 0, 28.9),
        ('Turkey Breast Meat','Meat', 'Turkey', 'g', 100, 104, 1.66, 4.21, 17.07),
        ('Turkey Bacon','Meat', 'Turkey', 'slice', 1, 31, 2.23, 0.25, 2.37),
        ('Turkey Meat (Cooked, Roasted)','Meat', 'Turkey', 'g', 100, 170, 4.97, 0, 29.32),


        ('Almonds','Nuts & Seeds', 'Almonds', 'piece', 1, 7, 0.61, 0.24, 0.26),
        ('Dry Roasted Almonds (with Salt Added)','Nuts & Seeds', 'Almonds', 'g', 100, 597, 52.83, 19.29, 22.09,
        ('Peanuts','Nuts & Seeds', 'Peanuts', 'g', 100, 567, 49.24, 16.13, 25.8),
        ('Dry Roasted Salted Peanuts','Nuts & Seeds', 'Peanuts', 'g', 100, 585, 49.66, 21.51, 23),
        ('Walnuts','Nuts & Seeds', 'Walnuts', 'g', 100, 654, 65.21, 13.71, 15.23),
        ('English Walnuts','Nuts & Seeds', 'Walnuts', 'g', 100, 654, 65.21, 13.71, 15.23),
        ('Pistachio Nuts','Nuts & Seeds', 'Pistachios', 'g', 100, 557, 44.44, 27.97, 20.61),
        ('Dry Roasted Pistachio Nuts','Nuts & Seeds', 'Pistachios', 'g', 100, 571, 44.44, 27.97, 20.61),
        ('Dried Whole Sesame Seeds','Nuts & Seeds', 'Seeds', 'g', 100, 573, 49.67, 23.45,17.73),
        ('Dry Roasted Sunflower Seeds','Nuts & Seeds', 'Seeds', 'g', 100, 582, 49.8, 24.07, 19.33),
        ('Flaxseed Seeds','Nuts & Seeds', 'Seeds', 'g', 100, 534, 42.16, 28.88, 18.29),
        ('Dried Pumpkin Seeds','Nuts & Seeds', 'Seeds', 'g', 100, 541, 45.85, 17.81, 24.54),
     

        ('Macaroni','Pasta, Rice & Noodles', 'Macaroni', 'g', 100, 157, 0.92, 30.68, 5.76),
        ('Macaroni with Cheese','Rice & Noodles', 'Macaroni', 'g', 100, 203, 9.4, 21.46, 7.94),
        ('Noodles','Rice & Noodles', 'Noodles', 'g', 100, 137, 2.06, 25.01, 4.51),
        ('Egg Noodles (Cooked)','Rice & Noodles', 'Noodles', 'g', 100, 138, 2.07, 25.16, 4.54),
        ('Rice Noodles (Cooked)','Rice & Noodles', 'Noodles', 'g', 100, 109, 0.2, 24.9, 0.91),
        ('Paella','Rice & Noodles', 'Paella', 'g', 100, 158, 5.44, 16.68, 9.52),
        ('Paella with Seafood','Rice & Noodles', 'Paella', 'g', 100, 143, 4.43, 16.5, 8.57),
        ('Spaghetti','Rice & Noodles', 'Spaghetti', 'g', 100, 157, 0.92, 30.68, 5.76),
        ('Whole Wheat Spaghetti','Rice & Noodles', 'Spaghetti', 'g', 100, 157, 0.92, 30.68, 5.76),
        ('White Rice','Rice & Noodles', 'Rice', 'g', 100, 129, 0.28, 27.9, 2.66),
        ('Brown Rice','Rice & Noodles', 'Rice', 'g', 100, 110, 0.89, 22.78, 2.56),
        ('Fried Rice','Rice & Noodles', 'Rice', 'g', 100, 168, 6.23, 21.06, 6.3),
        ('Wild Rice','Rice & Noodles', 'Rice', 'g', 100, 101, 0.34, 21.34, 3.99),
        

        ('Breakfast Bar','Snacks', 'Cereal Bars', 'bar', 1, 181, 5.4, 30.01, 3.05),
        ('Breakfast Bars (Oats, Sugar, Raisins, Coconut, Include Granola Bar)','Snacks', 'Cereal Bars', 'bar', 1, 181, 5.4, 30.01, 3.05),
        ('Potato Chips','Snacks', 'Chips', 'g', 100, 547, 37.47, 49.74, 6.56),
        ('Potato Chips (Salted)','Snacks', 'Chips', 'g', 100, 547, 37.47, 49.74, 6.56),
        ('Fat Free Potato Chips','Snacks', 'Chips', 'g', 100, 379, 0.6, 83.76, 9.64),
        ('Chewing Gum (Sugared)','Snacks', 'Gum', 'piece', 1, 10, 0.01, 2.64, 0),
        ('Chewing Gum (Sugarless)','Snacks', 'Gum', 'piece', 1, 5, 0.01, 1.9, 0),
        ('Bacon Sticks','Snacks', 'Jerky', 'g', 100, 517, 44.2, 0.8, 29.1),
        ('Smoked Beef Sticks','Snacks', 'Jerky', 'g', 100, 550, 49.6, 5.4, 21.5),
        ('Beef Strick','Snacks', 'Jerky', 'g', 100, 410, 25.6, 11, 33.2),
        ('Meal Replacement Bar','Snacks', 'Nutrition Bars', 'bar', 1, 143, 4.55, 24.29, 2.38),
        ('Powerbar (Fortified High Energy Bar)','Snacks', 'Nutrition Bars', 'bar', 1, 229, 1.76, 41.73, 10.14),
        ('Air Popped Popcorn','Snacks', 'Popcorn', 'g', 100, 387, 4.54, 77.78, 12.94),
        ('Buttered Air Popped Popcorn','Snacks', 'Popcorn', 'g', 100, 486, 27.94, 53.67, 9.19),
        ('Chicken Sandwich with Spread','Snacks', 'Sandwich','sandwich', 1, 265, 7.75, 26.16, 21.28),        
        ('Ham and Cheese Sandwich','Snacks', 'Sandwich', 'sandwich', 1, 352, 15.48, 33.35, 20.69),
        ('Roast Beef Sandwich','Snacks', 'Sandwich', 'sandwich', 1, 341, 13.49, 26.02, 26.85),
        ('Peanut Butter Sandwich','Snacks', 'Sandwich', 'sandwich', 1, 327, 14.23, 42.23, 10.32),
        ('Sushi','Snacks', 'Sushi', 'piece', 1, 37, 0.11, 7.77, 1.12),
        ('Sushi with Vegetables and Seafood','Snacks', 'Sushi', 'piece', 1, 36, 0.11, 7.15, 1.4),
        ('California Rolls','Snacks', 'Sushi', 'piece', 1, 33, 0.12, 6.31, 1.38),


        ('Brownie','Sweets, Candy & Desserts', 'Brownies', 'g', 100, 379, 13.77, 62.54, 4.76),
        ('Lowfat Brownie','Sweets, Candy & Desserts', 'Brownies', 'g', 100, 324, 5.38, 70.23, 5.43),
        ('Cakes','Sweets, Candy & Desserts', 'Cakes', 'piece', 1, 257, 18, 20.4, 4.4),
        ('Chocolate Cake (with Chocolate Frosting)','Sweets, Candy & Desserts', 'Cakes', 'piece', 1, 235, 10.5, 34.94, 2.62),
        ('Sponge Cake','Sweets, Candy & Desserts', 'Cakes', 'piece', 1, 187, 2.71, 36.35, 4.6),
        ('Hard Candies','Sweets, Candy & Desserts', 'Candies', 'piece', 1, 24, 0.01, 5.88, 0),
        ('Jellybeans','Sweets, Candy & Desserts', 'Candies', 'piece', 1, 41, 0.01, 10.29, 0),
        ('Milk Chocolate Candies','Sweets, Candy & Desserts', 'Chocolate', 'bar', 1, 235, 13.05, 26.14, 3.37),
        ('Dark Chocolate ','Sweets, Candy & Desserts', 'Chocolate', 'bar', 1, 207, 14.02, 24.44, 1.37),
        ('Sweet Chocolate Candies','Sweets, Candy & Desserts', 'Chocolate', 'bar', 1, 143, 9.7, 16.9, 1.11),      
        ('Cookie','Sweets, Candy & Desserts', 'Cookies', 'piece', 1, 24, 1.07, 3.45, 0.27),
        ('Chocolate Chip Cookies ','Sweets, Candy & Desserts', 'Cookies', 'piece', 1, 69, 3.64, 8.86, 0.52),
        ('Shortbread Cookies','Sweets, Candy & Desserts', 'Cookies', 'piece', 1, 40, 1.93, 5.16, 0.49),



        ('Plain Crepe','Sweets, Candy & Desserts', 'Crepes', 'piece', 1, 112, 5.54, 10.83, 4.38),
        ('Chocolate Filled Crepe','Sweets, Candy & Desserts', 'Crepes', 'piece', 1, 112, 5.54, 10.83, 4.38),
        ('Glazed Doughnuts', 'Sweets, Candy & Desserts', 'Doughnuts', 'piece', 1, 192, 10.3, 22.86, 2.34),
        ('Chocolate Doughnuts', 'Sweets, Candy & Desserts', 'Doughnuts', 'piece', 1, 133, 8.68, 13.44, 1.4),
        ('Doughnut  (Plain)', 'Sweets, Candy & Desserts', 'Doughnuts', 'piece', 1, 198, 10.7, 23.86, 2.35),
        ('Ice Cream Cone', 'Sweets, Candy & Desserts', 'Ice Cream Cones', 'piece', 1, 170, 7.91, 22.82, 3.06),
        ('Chocolate Ice Cream Cone', 'Sweets, Candy & Desserts', 'Ice Cream Cones', 'piece', 1, 173, 7.43, 24.77, 3.18),
        ('Light Ice Cream Cone', 'Sweets, Candy & Desserts', 'Ice Cream Cones', 'piece', 1, 122, 2.45, 21.89, 3.81),
        ('Vanilla Ice Creams', 'Sweets, Candy & Desserts', 'Ice Cream', 'g', 100, 201, 11, 23.6, 3.5),
        ('Chocolate Ice Creams', 'Sweets, Candy & Desserts', 'Ice Cream', 'g', 100, 216, 11, 28.2, 3.8),
        ('Strawberry Ice Creams', 'Sweets, Candy & Desserts', 'Ice Cream', 'g', 100, 192, 8.4, 27.6, 3.2),
        ('Light Vanilla Ice Creams', 'Sweets, Candy & Desserts', 'Ice Cream', 'g', 100, 165, 4.83, 25.8, 4.78),
        ('Ice Pop', 'Sweets, Candy & Desserts', 'Ice Pop', 'stick', 1, 43, 0.13, 10.58, 0),
        ('Ice Pop (Sweetened with Low Calorie Sweetener)', 'Sweets, Candy & Desserts', 'Ice Pop', 'stick', 1, 12, 0, 3.08, 0),
        ('English Muffin', 'Sweets, Candy & Desserts', 'Muffins', 'g', 100, 232, 1.98, 44.62, 8.14),
        ('Blueberry Muffin', 'Sweets, Candy & Desserts', 'Muffins', 'g', 100, 132, 0.98, 25.62, 5.14),
        ('Chocolate Chip Muffin', 'Sweets, Candy & Desserts', 'Muffins', 'g', 100, 322, 12.78, 45.7, 7.29),
        ('Plain Pancakes', 'Sweets, Candy & Desserts', 'Pancakes', 'piece', 1, 86, 3.69, 10.75, 2.43),
        ('Blueberry Pancakes', 'Sweets, Candy & Desserts', 'Pancakes', 'piece', 1, 84, 3.5, 11.02, 2.32),
        ('Buttermilk Pancakes', 'Sweets, Candy & Desserts', 'Pancakes', 'piece', 1, 86, 3.69, 10.75, 2.43),
        ('Apple Pie', 'Sweets, Candy & Desserts', 'Pie', 'g', 100, 265, 12.5, 37.1, 2.4),
        ('Cherry Pie', 'Sweets, Candy & Desserts', 'Pie', 'g', 100, 260, 11, 39.1, 2),
        ('Blueberry Pie', 'Sweets, Candy & Desserts', 'Pie', 'g', 100, 245, 11.5, 33.1, 2.7),
        ('Lemon Meringue Pie', 'Sweets, Candy & Desserts', 'Pie', 'g', 100, 285, 12.9, 39.1, 3.8),
        ('Sweet Roll', 'Sweets, Candy & Desserts', 'Sweet Roll', 'piece', 1, 223, 9.84, 30.54, 3.72),
        ('Cinnamon Sweet Rolls (with Raisins)', 'Sweets, Candy & Desserts', 'Sweet Roll', 'piece', 1, 223, 9.84, 30.54, 3.72),
        ('Sweet Cinnamon Bun', 'Sweets, Candy & Desserts', 'Sweet Roll', 'piece', 1, 223, 9.84, 30.54, 3.72),
        ('Plain Waffle', 'Sweets, Candy & Desserts', 'Waffles', 'piece', 1, 121, 3.72, 19.05, 2.85),
        ('Fruit Waffle', 'Sweets, Candy & Desserts', 'Waffles', 'piece', 1, 223, 9.84, 30.54, 3.72),
        ('Toasted Plain Waffle', 'Sweets, Candy & Desserts', 'Waffles', 'piece', 1, 223, 9.84, 30.54, 3.72),


        ('Broccoli', 'Vegetables', 'Broccoli', 'g', 100, 34, 0.37, 6.64, 2.82),
        ('Cooked Broccoli', 'Vegetables', 'Broccoli', 'g', 100, 34, 0.37, 6.64, 2.82),
        ('Cabbage', 'Vegetables', 'Cabbage', 'g', 100, 24, 0.12, 5.58, 1.44),
        ('Green Cabbage', 'Vegetables', 'Cabbage', 'g', 100, 24, 0.12, 4.58, 1.44),
        ('Cabbage', 'Vegetables', 'Cabbage', 'g', 100, 31, 0.12, 7.58, 1.34),
        ('Carrots', 'Vegetables', 'Carrots', 'g', 100, 41, 0.24, 9.58, 0.94),
        ('Baby Carrot', 'Vegetables', 'Carrots', 'g', 100, 35, 0.12, 8.58, 0.64),
        ('Cooked Carrot', 'Vegetables', 'Carrots', 'g', 100, 54, 2.48, 7.58, 0.74),
        ('Cauliflower', 'Vegetables', 'Cauliflower', 'g', 100, 25, 0.1, 5.3, 1.98),
        ('Cooked Cauliflower', 'Vegetables', 'Cauliflower', 'g', 100, 22, 0.37, 3.96, 1.74),
        ('Cooked Cauliflower (from Frozen)', 'Vegetables', 'Cauliflower', 'g', 100, 34, 0.48, 6.58, 2.74),
        ('Corn', 'Vegetables', 'Corn', 'g', 100, 86, 1.18, 19.02, 3.22),
        ('Baby Corn', 'Vegetables', 'Corn', 'g', 100, 81, 1, 18.5, 2.62),
        ('Corn On The Cob with Butter', 'Vegetables', 'Corn', 'g', 100, 106, 2.35, 21.88, 3.06),        
        ('Cucumber (Peeled)', 'Vegetables', 'Cucumbers', 'g', 100, 12, 0.16, 2.16, 0.59),
        ('Cucumber (with Peel)', 'Vegetables', 'Cucumbers', 'g', 100, 15, 0.11, 3.6, 0.65),
        ('Lettuce', 'Vegetables', 'Lettuce', 'g', 100, 14, 0.14, 2.97, 0.9),
        ('Lettuce', 'Vegetables', 'Lettuce', 'g', 100, 15, 0.14, 2.97, 1.3),
        ('Lettuce', 'Vegetables', 'Lettuce', 'g', 100, 17, 0.3, 3.28, 1.23),
        ('Mushrooms', 'Vegetables', 'Mushrooms', 'g', 100, 22, 0.34, 3.28, 3.09),
        ('Mushroom Stems', 'Vegetables', 'Mushrooms', 'g', 100, 22, 0.34, 3.28, 3.09),
        ('Mushrooms (Canned)', 'Vegetables', 'Mushrooms', 'g', 100, 25, 0.29, 5.09, 1.8),
        ('Olives', 'Vegetables', 'Olives', 'piece', 1, 5, 0.45, 0.22, 0.4),
        ('Black Olives', 'Vegetables', 'Olives', 'piece', 1, 5, 0.45, 0.22, 0.4),
        ('Green Olives', 'Vegetables', 'Olives', 'piece', 1, 5, 0.45, 0.22, 0.4),
        ('Onion', 'Vegetables', 'Onions', 'g', 100, 42, 0.08, 10.11, 0.92),
        ('Red Onions', 'Vegetables', 'Onions', 'g', 100, 42, 0.08, 10.11, 0.92),
        ('Green Peppers', 'Vegetables', 'Peppers', 'g', 100, 20, 0.1, 4.64, 0.86),
        ('Yellow Peppers', 'Vegetables', 'Peppers', 'g', 100, 27, 0.2,6.3 , 1),
        ('Red Peppers', 'Vegetables', 'Peppers', 'g', 100, 26, 0.3, 6.03, 0.99),
        ('White Potatoes (Flesh and Skin)', 'Vegetables', 'Potatoes', 'g', 100, 70, 0.1, 15.7, 1.68),
        ('Baked Potato (Peel Eaten)', 'Vegetables', 'Potatoes', 'g', 100, 109, 2.2, 20.53, 2.43),
        ('Roasted Potato', 'Vegetables', 'Potatoes', 'g', 100, 149, 7, 20, 2.3),
        ('Spinach', 'Vegetables', 'Spinach', 'g', 100, 7, 0.12, 1.09, 0.86),
        ('Tomatoe', 'Vegetables', 'Tomatoes', 'g', 100, 18, 0.2, 3.92, 0.88),
        ('Red Tomatoes', 'Vegetables', 'Tomatoes', 'g', 100, 18, 0.2, 4.92, 1.88),
        ('Cherry Tomatoes', 'Vegetables', 'Tomatoes', 'g', 100, 18, 0.2, 3.92, 0.88);





 







