# UPenn_Project2
This project was done by Hao Dong, Ana Stefanski, Michael McAneny-Binetsky, Vysh Nalluri, and Meredith Hopkins as part of the University of Pennsylvania Data Analytics Bootcamp. Data on bird sightings and data on ufo sightings were collected from Cornell's eBird API 2.0 and Kaggle, respectively. The data was cleaned and procesed with Pandas in Jupyter Lab before being loaded into both PostgreSQL and MongoDB for storage. 

UFO data:

The first step in this project was to extract data. The group decided to find data on UFO sightings and data on bird sightings. The UFO sightings data was sourced from Kaggle and downloaded as a CSV. Obtaining the bird sightings data was a more complex process. Due to the volume of data available through the eBird API, at this stage in the project the group decided to restrict the data to a single US state - California - and the years 2003 to 2013. This API only allows date specific data to be drawn in two ways; 1) By selecting up to the last 30 days of data or; 2) Selecting data from a single date. Because we wanted data from a specific timeframe from 2003 to 2013 we created a nested loop that runs through all the dates in a given year, checks if there is any data, and stores the data if there is any in a list, and create a dataframe out of that. Then we transpose the dataframe, change the column names, and save it to a csv. This is done for each year of our data. From there, we merge all our data together, split our Date column into a date and time column, and convert our date into a datetime data type before saving that new dataframe into a csv.

The next step was transforming the data. For the UFO data, we dropped some columns that were not needed for our purposes, split the datetime column to get a year column and a date column, filtered to only keep data from the state of California from 2003 through 2013. 
Imported SQLAlchemy and Pandas as dependency. Read in our csv file - ../cleaned_data/cali_ufo.csv". To load into Postgres we used the dependency getpass to store our password. We made the connection to Postgres with ‘create engine’ and passed in the connection string. Loaded the dataframe with the table name of “Bird Data” and used the arguments if_exists = append, index = True. Index = True - This will be our arbitrary primary key.
Bird Data:
Reviewed data and decided to drop the following columns: 'location ID', 'observation valid', 'observation reviewed', 'location private', ‘Sub ID’. Only called data from California to match data in UFO. The dataframe before cleaning had rows and columns switched, therefore transposed data changing rows to columns and downloaded as csv file. Due to the large amount of data called from Bird data, data was saved under multiple csvs, one for each year. Merged all csvs for years 2003 through 2013. Split datetime column to get a year column, then filtered to keep only data from 2003 to 2013 and created a new dataframe with the filtered data. Imported SQLAlchemy as dependency. Due to the large csv file of Bird Data, zipping the file was necessary to manage data size. We discovered that PD.read_csv will read a zipped csv file. To load into Postgres we used the dependency getpass to store our password. We made the connection to Postgres with ‘create engine’ and passed in the connection string. We then loaded the dataframe with the table name of “Bird Data” and used the arguments if_exists = fail, index = False. if_exists was used so that rows are not duplicated when data is loaded at a later time. Index = false was used to remove the index from the data frame because it is irrelevant.

Screenshots:

Bird data before cleaning: ![image info](https://github.com/haodong191/UPenn_Project2/blob/master/Images/Bird_before_data_transform.png)

Bird data after cleaning: ![image info](https://github.com/haodong191/UPenn_Project2/blob/master/Images/Bird_after_data_transform.png?raw=true)

UFO data before cleaning: ![image info](https://github.com/haodong191/UPenn_Project2/blob/master/Images/UFO%20before%20data%20transform.png)

UFO data after cleaning: ![image info](https://github.com/haodong191/UPenn_Project2/blob/master/Images/UFO_after_data_transform.png)

