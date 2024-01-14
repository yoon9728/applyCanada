-- Restaurants
CREATE TABLE Restaurants (
    Item VARCHAR(100),
    AverageCost DECIMAL(10, 2),
    CostRange VARCHAR(20)
);

-- Insert data into the Restaurants table
INSERT INTO Restaurants (Item, AverageCost, CostRange)
VALUES 
    ('Meal, Inexpensive Restaurant', 24.00, '15.00-40.00'),
    ('Meal for 2 People(Three-course Mid-range Restaurant)', 100.00, '65.00-200.00'),
    ('McMeal at McDonalds (or Equivalent Combo Meal)', 14.00, '12.00-15.00'),
    ('Domestic Beer (0.5 liter draught)', 8.00, '5.00-10.50'),
    ('Imported Beer (0.33 liter bottle)', 8.00, '6.00-11.00'),
    ('Cappuccino (regular)', 5.00, '3.00-8.00'),
    ('Coke/Pepsi (0.33 liter bottle)', 2.88, '2.00-4.50'),
    ('Water (0.33 liter bottle)', 2.34, '1.95-3.90');

-- Markets
CREATE TABLE Markets (
    Item VARCHAR(100),
    AverageCost DECIMAL(10, 2),
    CostRange VARCHAR(20)
);

-- Insert data into the Markets table
INSERT INTO Markets (Item, AverageCost, CostRange)
VALUES 
    ('Milk (regular, 1 liter)', 2.88, '1.50-5.00'),
    ('Loaf of Fresh White Bread (500g)', 3.51, '2.00-6.00'),
    ('Rice (white , 1kg)', 5.02, '2.20-10.00'),
    ('Eggs (regular, 12)', 4.63, '3.00-7.00'),
    ('Local Cheese (1kg)', 15.30, '7.00-35.00'),
    ('Chicken Fillets (1kg)', 16.41, '8.00-25.00'),
    ('Beef Round (1kg or Equivalent Back Leg Red Meat)', 19.20, '10.00-30.00'),
    ('Apples (1kg)', 5.63, '2.00-8.82'),
    ('Banana (1kg)', 1.90, '1.19-4.00'),
    ('Oranges (1kg)', 5.11, '2.00-10.00'),
    ('Tomato (1kg)', 5.52, '2.00-9.00'),
    ('Potato (1kg)', 3.54, '1.10-6.61'),
    ('Onion (1kg)', 3.54, '1.50-6.00'),
    ('Lettuce (1 head)', 3.58, '2.00-5.00'),
    ('Water (1.5 liter bottle)', 2.39, '1.00-4.00'),
    ('Bottle of Wine (Mid-Range)', 18.00, '12.19-26.49'),
    ('Domestic Beer (0.5 liter bottle)', 4.05, '2.25-7.00'),
    ('Imported Beer (0.33 liter bottle)', 4.37, '2.50-8.00'),
    ('Cigarettes 20 Pack (Marlboro)', 18.50, '15.00-24.00');

-- Transportation
CREATE TABLE Transportation (
    Item VARCHAR(100),
    AverageCost DECIMAL(10, 2),
    CostRange VARCHAR(20)
);

-- Insert data into the Transportation table
INSERT INTO Transportation (Item, AverageCost, CostRange)
VALUES 
    ('One-way Ticket (Local Transport)', 3.40, '2.50-4.00'),
    ('Monthly Pass (Regular Price)', 105.00, '80.00-156.00'),
    ('Taxi Start (Normal Tariff)', 4.50, '3.60-7.50'),
    ('Taxi 1km (Normal Tariff)', 2.07, '1.67-4.00'),
    ('Taxi 1hour Waiting (Normal Tariff)', 39.00, '30.00-60.00'),
    ('Gasoline (1 liter)', 1.59, '1.36-1.98'),
    ('Volkswagen Golf 1.4 90 KW Trendline (Or Equivalent New Car)', 34850.00, '29125.75-40000.00'),
    ('Toyota Corolla Sedan 1.6l 97kW Comfort (Or Equivalent New Car)', 28873.25, '25000.00-35000.00');

-- Utilities
CREATE TABLE Utilities (
    Item VARCHAR(100),
    AverageCost DECIMAL(10, 2),
    CostRange VARCHAR(20)
);

-- Insert data into the Utilities table
INSERT INTO Utilities (Item, AverageCost, CostRange)
VALUES 
    ('Basic (Electricity, Heating, Cooling, Water, Garbage) for 85m^2 Apartment', 215.15, '108.06-400.00'),
    ('Mobile Phone Monthly Plan with Calls and 10GB+ Data', 64.62, '40.00-100.00'),
    ('Internet (60 Mbps or More, Unlimited Data, Cable/ADSL)', 86.84, '60.00-127.00');

-- SportsAndLeisure
CREATE TABLE SportsAndLeisure (
    Item VARCHAR(100),
    AverageCost DECIMAL(10, 2),
    CostRange VARCHAR(20)
);

-- Insert data into the SportsAndLeisure table
INSERT INTO SportsAndLeisure (Item, AverageCost, CostRange)
VALUES 
    ('Fitness Club Monthly Fee for 1 Adult', 58.41, '25.00-100.00'),
    ('Tennis Court Rent (1 Hour on Weekend)', 27.26, '10.00-50.00'),
    ('Cinema, International Release(1 Seat)', 15.00, '13.00-22.00');

-- Childcare
CREATE TABLE Childcare (
    Item VARCHAR(100),
    AverageCost DECIMAL(10, 2),
    CostRange VARCHAR(20)
);

-- Insert data into the Childcare table
INSERT INTO Childcare (Item, AverageCost, CostRange)
VALUES 
    ('Preschool ( Full Day, Private, Monthly for 1 Child)', 1113.18, '650.00-2000.00'),
    ('International Primary School(Yearly for 1 Child)', 19413.79, '9500.00-35000.00');

-- ClothingAndShoes
CREATE TABLE ClothingAndShoes (
    Item VARCHAR(100),
    AverageCost DECIMAL(10, 2),
    CostRange VARCHAR(20)
);

-- Insert data into the ClothingAndShoes table
INSERT INTO ClothingAndShoes (Item, AverageCost, CostRange)
VALUES 
    ('1 Pair of Jeans (Levis 501 Or Similar)', 80.61, '40.00-128.00'),
    ('1 Summer Dress in a Chain Store', 56.74, '30.00-100.00'),
    ('1 Pair of Nike Running Shoes (Mid-Range)', 120.04, '75.00-180.00'),
    ('1 Pair of Men Leather Business Shoes', 154.51, '80.00-250.00');

-- RentPerMonth
CREATE TABLE RentPerMonth (
    Item VARCHAR(100),
    AverageCost DECIMAL(10, 2),
    CostRange VARCHAR(20)
);

-- Insert data into the RentPerMonth table
INSERT INTO RentPerMonth (Item, AverageCost, CostRange)
VALUES 
    ('Apartment (1 bedroom) in City Centre', 1953.17, '1222.49-2850.00'),
    ('Apartment (1 bedroom) Outside of Centre', 1768.94, '1179.04-2500.00'),
    ('Apartment (3 bedrooms) in City Centre', 3118.79, '2053.50-5199.18'),
    ('Apartment (3 bedrooms) Outside of Centre', 2619.40, '1671.82-4000.00'),
    ('Price per Square Meter to Buy Apartment in City Centre', 10989.39, '4000.00-20420.72'),
    ('Price per Square Meter to Buy Apartment Outside of Centre', 7514.07, '3658.00-13454.89');

-- SalariesAndFinancing
CREATE TABLE SalariesAndFinancing (
    Item VARCHAR(100),
    AverageCost DECIMAL(10, 2),
    CostRange VARCHAR(20)
);

-- Insert data into the SalariesAndFinancing table
INSERT INTO SalariesAndFinancing (Item, AverageCost, CostRange)
VALUES 
    ('Average Monthly Net Salary (After Tax)', 3963.00, NULL),
    ('Yearly Mortgage Interest Rate in Percentages for 20 Years Fixed-Rate', 7.01, '4.50-8.75');
