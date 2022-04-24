# Amazon_Vine_Analysis

## Analysis Overview
This project analyzes Amazon Vine program and determines if there is a bias toward favorable reviews from Vine members.
The analysis uses PySpark to perform the ETL process to extract the dataset, transform the data, connect to an AWS RDS instance, load the transformed data into pgAdmin and calculate different metrics. For this analysis we focused in videogames reviews in amazon.

## Results
- For vine reviews we can see that, from a data set of 40565 rows, we only have 94 reviews (0.23%) with a vine paid; 48 of them has a 5 star review and the relation of 5 star reviews against of total reviews is 51.06%

![image](https://user-images.githubusercontent.com/96214489/164991740-fd42b4c7-7c55-4286-b212-924b13af5193.png)

- For not-vine reviews we can see that, from a data set of 40565 rows, we have 40471 reviews (99.76%) with a vine paid; 15663 of them has a 5 star review and the relation of 5 star reviews against of total reviews is 38.70%

![image](https://user-images.githubusercontent.com/96214489/164991921-40501d8f-380b-41e8-8fd5-5f0117630326.png)

## Summary
There is a positive bias tendency of getting a 5 star review when a vine has paid. For the dataset we have analyzed we can see that over 50% of reviews has a 5 star review, however the sample of reviews with helpful votes is to small to, with a total confidence, say that you will get a 5 star review with a paid vine.

On the other hand, for not paid vine we can see that only the 39% has a 5 star review, we could say that 40% get a 5 star review which is only 10 points under the paid vines results.

In conclussion we could say that, perhaps for videogames, is not so convenient to pay a vine due to there is not a high difference between the total 5 star reviews for the not paid and the paid ones. In case of videogames perhaps another factors play to get a 5 star review such as: background, popularity, multiplayer, etc.
