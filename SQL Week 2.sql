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

SELECT 
FROM Housing_Market_Inventory_listing
JOIN Housing_Market_Inventory_places
   ON Housing_Market_Inventory_listing.postal_code = Housing_Market_Inventory_places.postal_code
JOIN United_States_COVID_19_Cases_and_Deaths
   ON Housing_Market_Inventory_places.state = United_States_COVID_19_Cases_and_Deaths.state