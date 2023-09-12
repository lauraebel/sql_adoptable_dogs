-- SELECT * FROM adoptable_dogs.dogs;

-- Counting the total number of individual dogs in the table (1598)
SELECT COUNT(dog_id) AS total_dogs FROM adoptable_dogs.dogs;

-- Counting the number of purebred dogs in the table (438)
SELECT COUNT(dog_id) AS purebred_dogs FROM adoptable_dogs.dogs WHERE mixed_breed = 'No';

-- Counting the number of mixed breed dogs in the table (1159) to conclude most homesless dogs are mixed breed
SELECT COUNT(dog_id) AS mixed_dogs FROM adoptable_dogs.dogs WHERE mixed_breed = 'Yes';
