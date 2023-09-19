# sql_adoptable_dogs
Welcome to Laura Ebel's SQL project on adoptable dogs!

For this project I used a dataset from Kaggle.com called "Adoptable Dogs in the US" from the user "The Devastator"

My goal in this project was to analyze data about homeless dogs to try to derive some conclusions about what types of dogs or personality traits were less likely to be adopted. Using these findings, a rescue could work on making some dogs more marketable as adoptable to the right homes. I am a huge animal lover and advocate for adopting. I also have volunteered ad rescue centers and have an adopted dog myself so this data and these findings are close to my heart.

Lesson Learned:  After spending a lot of time trying to JOIN dogs and locations tables to make conclusions about the data, I realized that the dog_ids did not match in both tables. Unfortunately there would be no way for me to fix this as I have no reference point without the id numbers to match the specfic dog with the specific location. Therefore, the locations table is no longer viable data for this project which in turn makes the moves table also not viable data as it only connected to the locations table and not the dogs table. This has taught me that your conclusions are only as good as the data you have. If the data tables to not match up, you will not be able to add any value to the research. I think this was a good learning experience because I spent so much time and frustration trying to get the data to work and match up before realizing the issue. Now I know to verify that the tables match up properly before trying to draw conclusions or they will be inaccurate and useless.

1. I wanted to determine if purebred dogs get adopted more than mixed breed dogs. By finding out that in this data there are only 438 available purebred dogs vs 1,159 available mixed breed dogs, I can conclude that mixed breed dogs are less likely to be adopted.

2. I wanted to see how many dogs of each breed are available to determine if certain breeds get overlooked more than others when people are adopting. My hypothesis was that pitbulls would be the most available and least likely to find homes. I found that this is overwhelmingly the case; Pit Bull Terriers are the least likely to be adopted followed (not very closely) by Chihuhuas.

3. I had a hypothesis that female dogs were more popular and got adopted easier than male dogs. Therefore, I did a count of each but my hypothesis was not really correct. While there were less females available (722) than males (875), it is not by a large margin which leads me to believe that the sex of the dog does not really impact its adoptability.

Data Cleaning:
- Removed "descriptions" column from locations table as it was a duplicate from the dogs table
- Removed all location data from the dogs table as it was a duplicate from the locations table
- Removed unneccessary data from the dogs table such as "adoptable" because all the dogs in this data set are adoptable, and "species" as all of the animals are dogs
- Renamed some of the columns to make them clearer to understand such as changing "contact_city" to "current_city" and "env_children" to "good_with_children"
- Removed "index" column of the dogs table (started at 0 and increased by 1 for each row) because the "dog_id" column is already a unique identifier related to each dog
- Updated the ids on the moves tables to start at 1 and not 0 for clarity
- Added a "location_id" column to the locations table to tie it to the moves table

Challenges:
- I have never used MySql before so I had to do a lot of research and trial and error to download it, create a database, import data, etc.
- CSV file automatically had utf-8 with BOM encoding which would not allow it to be imported into mysql so had to use cotEditor to change the language to ascii
- Issues with Boolean when importing csv to mysql so changing Boolean to varchar and changing true/false to yes/no
- Had to drop and re-import table to fix name of first column due to strange characters and not being able to use correct sql syntax (>>)

