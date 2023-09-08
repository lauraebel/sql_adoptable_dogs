-- Dataset Source: kaggle.com, Title: Adoptable Dogs in the US, User: "THE DEVASTATOR"

-- Adding the first table from the data set listing all adoptable dogs and characteristics
CREATE TABLE adoptable_dogs.dogs (
dog_id INT,
name varchar(255),
breed_primary varchar(255),
breed_secondary varchar(255),
mixed_breed boolean,
breed_unknown boolean,
color_primary varchar(255),
color_secondary varchar(255),
color_tertiary varchar(255),
age varchar(30),
sex varchar(30),
size varchar(30),
coat varchar(30),
fixed boolean,
house_trained boolean,
special_needs boolean,
shots_uptodate boolean,
good_with_kids boolean,
good_with_dogs boolean,
good_with_cats boolean,
description varchar(255)
);