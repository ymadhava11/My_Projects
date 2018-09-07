CREATE DATABASE Grocery_Sales_Transactions_Raw;
CREATE DATABASE Grocery_Sales_Transactions_Temp_Raw;

USE Grocery_Sales_Transactions_Raw;

CREATE EXTERNAL TABLE IF NOT EXISTS Items_Store44_2013_2015
(item_nbr STRING,family STRING,class STRING,perishable STRING)
COMMENT 'Data about Grocery Orders'
Row format delimited
Fields terminated by ','
STORED AS TEXTFILE
LOCATION '/gl-capstone-data/Team6-C-Sep/Data/Raw/Items_Store44_2013_2015'
tblproperties ("skip.header.line.count"="1");


CREATE EXTERNAL TABLE IF NOT EXISTS Items
(item_nbr STRING,family STRING,class STRING,perishable STRING)
COMMENT 'Data about Grocery Orders'
Row format delimited
Fields terminated by ','
STORED AS TEXTFILE
LOCATION '/gl-capstone-data/Team6-C-Sep/Data/Raw/Items'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS Transactions
(date DATE,store_nbr STRING,transactions INT)
COMMENT 'Data about Grocery Transactions'
Row format delimited
Fields terminated by ','
STORED AS TEXTFILE
LOCATION '/gl-capstone-data/Team6-C-Sep/Data/Raw/Transactions'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS Oil
(date DATE,dcoilwtico DECIMAL)
COMMENT 'Data about Oil price by Date'
Row format delimited
Fields terminated by ','
STORED AS TEXTFILE
LOCATION '/gl-capstone-data/Team6-C-Sep/Data/Raw/Oil'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS Oil_2013_2015
(date DATE,dcoilwtico DECIMAL)
COMMENT 'Data about Oil price for years 2013 to 2015'
Row format delimited
Fields terminated by ','
STORED AS TEXTFILE
LOCATION '/gl-capstone-data/Team6-C-Sep/Data/Raw/Oil_2013_2015'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS Oil_2013_2015_Interpolated
(date DATE,dcoilwtico DECIMAL)
COMMENT 'Data about Interpolated Oil price for 2013 to 2015'
Row format delimited
Fields terminated by ','
STORED AS TEXTFILE
LOCATION '/gl-capstone-data/Team6-C-Sep/Data/Raw/Oil_2013_2015_Interpolated'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS Stores
(store_nbr STRING,city STRING,state STRING,type STRING,cluster STRING)
COMMENT 'Data about Stores'
Row format delimited
Fields terminated by ','
STORED AS TEXTFILE
LOCATION '/gl-capstone-data/Team6-C-Sep/Data/Raw/Stores'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS Holidays_Events
(date DATE,type STRING,locale STRING,locale_name STRING,description STRING,transferred STRING)
COMMENT 'Data about Holidays Events'
Row format delimited
Fields terminated by ','
STORED AS TEXTFILE
LOCATION '/gl-capstone-data/Team6-C-Sep/Data/Raw/Holidays_Events'
tblproperties ("skip.header.line.count"="1");


CREATE EXTERNAL TABLE IF NOT EXISTS Holidays_Events_2013_2015
(date DATE,type STRING,locale STRING,locale_name STRING,description STRING,transferred STRING)
COMMENT 'Data about Holidays Events for 2013 to 2015'
Row format delimited
Fields terminated by ','
STORED AS TEXTFILE
LOCATION '/gl-capstone-data/Team6-C-Sep/Data/Raw/Holidays_Events_2013_2015'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS Holidays_Events_2013_2015_noduplicates
(date DATE,type STRING,locale STRING,locale_name STRING,description STRING,transferred STRING)
COMMENT 'Data about Holidays Events for 2013 to 2015'
Row format delimited
Fields terminated by ','
STORED AS TEXTFILE
LOCATION '/gl-capstone-data/Team6-C-Sep/Data/Raw/Holidays_Events_2013_2015_noduplicates'
tblproperties ("skip.header.line.count"="1");


CREATE EXTERNAL TABLE IF NOT EXISTS Train_Item_Store44_Jan2016
(date DATE,item_nbr STRING,unit_sales DECIMAL)
COMMENT 'Data about datewise unit sales value of store44 Items'
Row format delimited
Fields terminated by ','
STORED AS TEXTFILE
LOCATION '/gl-capstone-data/Team6-C-Sep/Data/Raw/Train_Item_Store44_Jan2016'
tblproperties ("skip.header.line.count"="1");


CREATE EXTERNAL TABLE IF NOT EXISTS Train_Store44
(id STRING,date DATE,store_nbr STRING,item_nbr STRING,unit_sales DECIMAL,onpromotion STRING)
COMMENT 'Data about datewise store44 ITEM details '
Row format delimited
Fields terminated by ','
STORED AS TEXTFILE
LOCATION '/gl-capstone-data/Team6-C-Sep/Data/Raw/Train_Store44'
tblproperties ("skip.header.line.count"="1");



CREATE EXTERNAL TABLE IF NOT EXISTS Train_Store44_With_Items
(item_nbr STRING,id STRING,date TIMESTAMP,store_nbr STRING,unit_sales DECIMAL,onpromotion STRING,family STRING,class STRING,perishable STRING)
COMMENT 'Data about datewise store44 ITEM details '
Row format delimited
Fields terminated by ','
STORED AS TEXTFILE
LOCATION '/gl-capstone-data/Team6-C-Sep/Data/Raw/Train_Store44_With_Items'
tblproperties ("skip.header.line.count"="1");

ALTER TABLE Train_Store44_With_Items SET SERDEPROPERTIES ("timestamp.formats"="yyyy-MM-dd'T'HH:mm:ss.SSSZ,millis");



CREATE EXTERNAL TABLE IF NOT EXISTS Train_Transactions_Daily_Store44
(date DATE,store_nbr STRING,transactions INT,unit_sales DECIMAL)
COMMENT 'Data about datewise store44 Transactions & unit sales'
Row format delimited
Fields terminated by ','
STORED AS TEXTFILE
LOCATION '/gl-capstone-data/Team6-C-Sep/Data/Raw/Train_Transactions_Daily_Store44'
tblproperties ("skip.header.line.count"="1");


CREATE EXTERNAL TABLE IF NOT EXISTS Transactions_Store44
(date DATE,store_nbr STRING,transactions INT)
COMMENT 'Data about datewise store44 Transactions'
Row format delimited
Fields terminated by ','
STORED AS TEXTFILE
LOCATION '/gl-capstone-data/Team6-C-Sep/Data/Raw/Transactions_Store44'
tblproperties ("skip.header.line.count"="1");


CREATE EXTERNAL TABLE IF NOT EXISTS Train
(id STRING,date DATE,store_nbr STRING,item_nbr STRING,unit_sales DECIMAL,onpromotion STRING)
COMMENT 'Data about datewise Train dataset details '
Row format delimited
Fields terminated by ','
STORED AS TEXTFILE
LOCATION '/gl-capstone-data/Team6-C-Sep/Data/train'
tblproperties ("skip.header.line.count"="1");



