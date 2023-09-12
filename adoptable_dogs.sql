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

