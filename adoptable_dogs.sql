-- Dataset Source: kaggle.com, Title: Adoptable Dogs in the US, User: "THE DEVASTATOR"

-- Adding the first table from the data set listing all adoptable dogs and characteristics
CREATE TABLE adoptable_dogs.dogs (
dog_id INT,
name varchar(255),
breed_primary varchar(255),
breed_secondary varchar(255),
mixed_breed varchar(30),
breed_unknown varchar(30),
color_primary varchar(255),
color_secondary varchar(255),
color_tertiary varchar(255),
age varchar(30),
sex varchar(30),
size varchar(30),
coat varchar(30),
fixed varchar(30),
house_trained varchar(30),
special_needs varchar(30),
shots_uptodate varchar(30),
good_with_kids varchar(30),
good_with_dogs varchar(30),
good_with_cats varchar(30)
);

-- DROP TABLE adoptable_dogs.dogs;

-- Importing the csv file with the information for the dogs table
-- LOAD DATA LOCAL INFILE 'c:/Users/lauraebel/Portfolio/adoptableDogs/dogs.csv'
-- INTO TABLE adoptable_dogs.dogs
-- FIELDS TERMINATED BY ',' 
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS; 