SELECT * FROM adoptable_dogs.dogs;

-- Counting the total number of individual dogs in the table (1598)
SELECT COUNT(dog_id) AS total_dogs FROM adoptable_dogs.dogs;

-- Counting the number of purebred dogs in the table (438)
SELECT COUNT(dog_id) AS purebred_dogs FROM adoptable_dogs.dogs WHERE mixed_breed = 'No';

-- Counting the number of mixed breed dogs in the table (1159) to conclude most homesless dogs are mixed breed
SELECT COUNT(dog_id) AS mixed_dogs FROM adoptable_dogs.dogs WHERE mixed_breed = 'Yes';

-- Determing the breeds of dogs with the most individuals available for adoption
SELECT breed_primary, COUNT(*) dogs_in_breed FROM adoptable_dogs.dogs GROUP BY breed_primary ORDER BY dogs_in_breed DESC LIMIT 10;

-- Counting female dogs available (722)
SELECT COUNT(dog_id) AS female_dogs FROM adoptable_dogs.dogs WHERE sex = 'Female';

-- Counting male dogs available (875)
SELECT COUNT(dog_id) AS male_dogs FROM adoptable_dogs.dogs WHERE sex = 'Male';

SELECT * FROM adoptable_dogs.moves;

SELECT * FROM adoptable_dogs.locations;

-- Making sure the tables connect - Showing all available dogs in New York
SELECT name as dogs_in_ny, current_state FROM adoptable_dogs.dogs JOIN adoptable_dogs.locations ON adoptable_dogs.dogs.dog_id HAVING current_state = "NY";

-- Dog id from the locations table does not exist in the dogs table
SELECT * FROM adoptable_dogs.dogs WHERE dog_id = 45987719;

-- Dog id from the locations table does not exist in the dogs table
SELECT * FROM adoptable_dogs.dogs WHERE dog_id = 45555304;

-- Dog id from the dogs table does not exist in the locations table
SELECT * FROM adoptable_dogs.locations WHERE dog_id = 46039306;

-- Dog id from the dogs table does not exist in the locations table
SELECT * FROM adoptable_dogs.locations WHERE dog_id = 44431034;