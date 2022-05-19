# US Housing Market Analysis

<p align="center">  
<img src="https://github.com/riavanitesh/Final-Project/blob/aem.saidur.rahman/Resources/Housing.png" width="55%" height="55%">
</p>
<p align="center">  
<i>  </i>
</p>

## Backgorund

The continuous rise of housing prices has meant that currently (May 2022) Overall U.S. housing affordability is the lowest since 2008 and falling. The average 30-year fixed mortgage rate is above 5% and the highest since 2011, and the rise this year has been one of the fastest on record. It's both pricing out some stretched homebuyers and causing some would-be borrowers to lose their mortgage eligibility. 

As Housing accounts for around 18% of the economy in residential fixed investment and related services, this alarming rise can create a big crisis in near future. From February 2021- February 2022, in these 12 months housing prices have increased 19.2%, organization like Zillow is forecasting another 14.9% growth in next 12 months. Both of these numbers are significantly higher compared to average annual U.S. home price growth of 4.6% posted since 1987.

This situation has meant that both the housing buyers and sellers are unsure about what is an optimum price for them. In our project, we will be providing the users a recommendation based on the listing price change in last 3 years, impact of covid in housing price in that zip code and building a forecasting model factoring in the inputs mentioned above. That will help our users with the answers of how much they should be looking for if they are in the process of selling a property based on the current trend and if someone is thinking about purchasing then what the price might look like if they decide to wait. 

## Questions we hope to answer with the data
                                              
•Based on the user input i.e., location, price range and size of the property, the best matching results are populated.

•It will also predict the change in housing prices in the coming one year

•Show the equity that can be built over the house in one year

•Concentration of the COVID-19 affected areas


## Data Source

We collected our housing data in CSV file format from https://www.realtor.com/research/data/. It is an extensive data collection with over million rows. From this dataset we are taking inputs from the columns of 

•	Postal Code 

•	Zip Name

•	Median Listing Price

•	Median Days on market

•	Median Listing Price per Square Foot

•	Median Square Feet

•	Average listing Price

We also have Covid-19 Data:

•	submission_date	state	

•	tot_cases	

•	conf_cases	

•	prob_cases

•	new_case	

•	pnew_case	

•	tot_death

## Communication Protocols
                                                                
In order to keep updated on the status of each of our parts of the project, we are catching up everyday over zoom/google meet and also have created a slack group where we share our update as and when its done.

## Tools

**•	Creating Database**

  o	PostgreSQL
  
  o	Amazon Web Services (AWS)
  
**•	Connecting to Database**

  o	Psycopg2
  
**•	Analyzing Data**

  o	Pandas
  
**•	Machine Learning**

  o	Imbalanced-learn
  
  o	Scikit-Learn
  
  o	Tensorflow
  
**•	Dashboard**

  o	Tableau
  
  o	Javascript
  
  o	Flask
  
  o	HTML
  
  o	CSS
  
 ## EDA
•	For the housing csv, the rows with null values are dropped

•	The month_date_yyyymm column datatype was changed from integer to datetime.

•	The heading was changed to Date and column rearranged.

•	For the covid cases csv, we changed the datatype of submission date to datetime and replaced the NaN with 0s

•	For the population csv, the zip column was converted to 5 digits with int datatype


## Machine Learning Model
•	The preliminary data includes columns that describe the situation over a period of three years starting from March 2019 to April 2022. These features include the date, the zip code, the house dimensions, listing counts and average listing price.

•	An ERD showcasing the inter-relationships between each of the features from the different datasets can be found [here](https://github.com/riavanitesh/Final-Project/blob/main/Housing%20Market%20QuickDBD-export%20Version%203.png).

•	The data will be split into training and test data using the train_test_split function. We will use the default 75% to 25% split.

•	We plan to use the ARIMA and the LSTM neural network for the time series forecasting.

