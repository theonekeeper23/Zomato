use zomato;
CREATE TABLE zomato_data (
    RestaurantID INT,
    RestaurantName VARCHAR(255),
    CountryCode INT,
    City VARCHAR(255),
    Cuisines TEXT,
    HasOnlineDelivery TEXT,
    HasTableBooking TEXT,
    IsDeliveringNow TEXT,
    SwitchToOrderMenu TEXT,
    PriceRange INT,
    Votes INT,
    AverageCostForTwo DECIMAL(10,2),
    Rating DECIMAL(3,1),
    Dated DATE,
    Country VARCHAR(255),
    Ratings VARCHAR(255));
    
-- SHOW VARIABLES LIKE 'secure_file_priv';
LOAD data infile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/zomato.csv" into table zomato_data
fields terminated by ','
ignore 1 lines;
select * from zomato_data;