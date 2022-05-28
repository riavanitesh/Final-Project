DROP TABLE Housing_Market_Inventory_places;
DROP TABLE Housing_Market_Inventory_listing;
DROP TABLE United_States_COVID_19_Cases_and_Deaths;
DROP TABLE Zip_Population;

CREATE TABLE United_States_COVID_19_Cases_and_Deaths (
    date varchar NOT NULL,
	state varchar   NOT NULL,
    tot_cases varchar   NOT NULL,
    tot_death varchar   NOT NULL
	);

CREATE TABLE Housing_Market_Inventory_listing (
    Date varchar  NOT NULL,
	postal_code varchar   NOT NULL,
    zip_name varchar   NOT NULL,
    median_listing_price varchar   NOT NULL,
    median_days_on_market varchar   NOT NULL,
    median_listing_price_per_square_foot varchar   NOT NULL,
    median_square_feet varchar   NOT NULL,
    average_listing_price varchar   NOT NULL,
    total_listing_count varchar   NOT NULL,
    listing_id int   NOT NULL,
    PRIMARY KEY (listing_id)
);


CREATE TABLE Housing_Market_Inventory_places (
	"Unnamed: 0" varchar NOT NULL,
    postal_code varchar  NOT NULL,
    state varchar  NOT NULL,
	city varchar  NOT NULL,
	PRIMARY KEY ("Unnamed: 0")
);


CREATE TABLE Zip_Population (
    zip varchar   NOT NULL,
    lat varchar   NOT NULL,
    lng varchar   NOT NULL,
    city varchar   NOT NULL,
    state_id varchar   NOT NULL,
    state_name varchar   NOT NULL,
    population varchar ,
    density varchar ,
    PRIMARY KEY (zip)
);

CREATE TABLE location_info AS(
SELECT 
	zip,
	lat,
	lng,
	state,
	zip.city,
	population,
	density
FROM housing_market_inventory_places market
JOIN zip_population zip
	ON market.postal_code = zip.zip
	);
	
CREATE TABLE listing_info AS(
SELECT
	Date,
	zip,
	lat,
	lng,
	state,
	info.city,
	population,
	density,
    median_listing_price,
    median_days_on_market,
    median_listing_price_per_square_foot,
    median_square_feet,
    average_listing_price,
    total_listing_count 
FROM housing_market_inventory_listing listing
JOIN location_info info
	ON listing.postal_code = info.zip
	);

CREATE TABLE covid_info AS(
SELECT
	info.Date,
	zip,
	lat,
	lng,
	info.state,
	info.city,
	population,
	density,
    median_listing_price,
    median_days_on_market,
    median_listing_price_per_square_foot,
    median_square_feet,
    average_listing_price,
    total_listing_count,
	tot_cases,
	tot_death
FROM united_states_covid_19_cases_and_deaths covid
JOIN listing_info info
	ON covid.state = info.state
	);
   
UPDATE listing_info
SET zip = 0
WHERE zip = '';

CREATE TABLE covid_info AS(
SELECT
	date,
	postal_code,
	market.state AS state_1,
	covid.state AS state_2,
	city,
	tot_cases,
	tot_death
FROM housing_market_inventory_places market
JOIN united_states_covid_19_cases_and_deaths covid
	ON covid.state = market.state
	);
