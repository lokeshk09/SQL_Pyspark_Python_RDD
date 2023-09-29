-- Databricks notebook source
-- Creating adatabase;
create database if not exists datalemur_q;
use datalemur_q;

-- COMMAND ----------

-- Create the candidates_skills table
DROP table if exists candidates_skills;
CREATE TABLE candidates_skills (
    candidate_id INT,
    skill STRING
);

-- Insert statements for the data
INSERT INTO candidates_skills VALUES
    (123, 'Python'),
    (123, 'Tableau'),
    (123, 'PostgreSQL'),
    (234, 'R'),
    (234, 'PowerBI'),
    (234, 'SQL Server'),
    (345, 'Python'),
    (345, 'Tableau');

-- Create the tweets table
drop table if exists tweets;
CREATE TABLE tweets (
    tweet_id INT,
    user_id INT,
    msg STRING,
    tweet_date STRING
);

-- Insert statements for the new data
INSERT INTO tweets VALUES
    (214252, 111, 'Am considering taking Tesla private at $420. Funding secured.', '12/30/2021 00:00:00'),
    (739252, 111, 'Despite the constant negative press covfefe', '01/01/2022 00:00:00'),
    (846402, 111, 'Following @NickSinghTech on Twitter changed my life!', '02/14/2022 00:00:00'),
    (241425, 254, 'If the salary is so competitive why won’t you tell me what it is?', '03/01/2022 00:00:00'),
    (231574, 148, 'I no longer have a manager. I can''t be managed', '03/23/2022 00:00:00');

-- Create the pages table
drop table if exists pages;
CREATE TABLE pages (
    page_id INT,
    page_name STRING
);

-- Insert statements for the data
INSERT INTO pages VALUES
    (20001, 'SQL Solutions'),
    (20045, 'Brain Exercises'),
    (20701, 'Tips for Data Analysts');

-- Create the likes table
drop table if exists page_likes;
CREATE TABLE page_likes (
    user_id INT,
    page_id INT,
    liked_date STRING
);

-- Insert statements for the new data
INSERT INTO page_likes VALUES
    (111, 20001, '04/08/2022 00:00:00'),
    (121, 20045, '03/12/2022 00:00:00'),
    (156, 20001, '07/25/2022 00:00:00');


DROP TABLE IF EXISTS parts_assembly;
-- Create the parts_assembly table
CREATE TABLE parts_assembly (
    part STRING,
    finish_date STRING,
    assembly_step INT
);

-- Insert statements for the data
INSERT INTO parts_assembly VALUES
    ('battery', '01/22/2022 00:00:00', 1),
    ('battery', '02/22/2022 00:00:00', 2),
    ('battery', '03/22/2022 00:00:00', 3),
    ('bumper', '01/22/2022 00:00:00', 1),
    ('bumper', '02/22/2022 00:00:00', 2),
    ('bumper', NULL, 3),
    ('bumper', NULL, 4);


-- Drop the viewership table if it exists
DROP TABLE IF EXISTS viewership;

-- Create the viewership table
CREATE TABLE viewership (
    user_id INT,
    device_type STRING,
    view_time STRING
);

-- Insert statements for the data
INSERT INTO viewership VALUES
    (123, 'tablet', '01/02/2022 00:00:00'),
    (125, 'laptop', '01/07/2022 00:00:00'),
    (128, 'laptop', '02/09/2022 00:00:00'),
    (129, 'phone', '02/09/2022 00:00:00'),
    (145, 'tablet', '02/24/2022 00:00:00');


-- Drop the posts table if it exists
DROP TABLE IF EXISTS posts;

-- Create the posts table
CREATE TABLE posts (
    user_id INT,
    post_id INT,
    post_date STRING,
    post_content STRING
);

-- Insert statements for the data
INSERT INTO posts VALUES
    (151652, 599415, '07/10/2021 12:00:00', 'Need a hug'),
    (661093, 624356, '07/29/2021 13:00:00', 'Bed. Class 8-12. Work 12-3. Gym 3-5 or 6. Then class 6-10. Another day that''s gonna fly by. I miss my girlfriend'),
    (004239, 784254, '07/04/2021 11:00:00', 'Happy 4th of July!'),
    (661093, 442560, '07/08/2021 14:00:00', 'Just going to cry myself to sleep after watching Marley and Me.'),
    (151652, 111766, '07/12/2021 19:00:00', 'I''m so done with covid - need travelling ASAP!');

-- Drop the messages table if it exists
DROP TABLE IF EXISTS messages;

-- Create the messages table
CREATE TABLE messages (
    message_id INT,
    sender_id INT,
    receiver_id INT,
    content STRING,
    sent_date STRING
);

-- Insert statements for the data
INSERT INTO messages VALUES
    (901, 3601, 4500, 'You up?', '08/03/2022 00:00:00'),
    (902, 4500, 3601, 'Only if you''re buying', '08/03/2022 00:00:00'),
    (743, 3601, 8752, 'Let''s take this offline', '06/14/2022 00:00:00'),
    (922, 3601, 4500, 'Get on the call', '08/10/2022 00:00:00');


-- Drop the job_listings table if it exists
DROP TABLE IF EXISTS job_listings;

-- Create the job_listings table
CREATE TABLE job_listings (
    job_id INT,
    company_id INT,
    title STRING,
    description STRING
);

-- Insert statements for the data
INSERT INTO job_listings VALUES
    (248, 827, 'Business Analyst', 'Business analyst evaluates past and current business data with the primary goal of improving decision-making processes within organizations.'),
    (149, 845, 'Business Analyst', 'Business analyst evaluates past and current business data with the primary goal of improving decision-making processes within organizations.'),
    (945, 345, 'Data Analyst', 'Data analyst reviews data to identify key insights into a business''s customers and ways the data can be used to solve problems.'),
    (164, 345, 'Data Analyst', 'Data analyst reviews data to identify key insights into a business''s customers and ways the data can be used to solve problems.'),
    (172, 244, 'Data Engineer', 'Data engineer works in a variety of settings to build systems that collect, manage, and convert raw data into usable information for data scientists and business analysts to interpret.');



-- Drop the trades table if it exists
DROP TABLE IF EXISTS trades;

-- Create the trades table
CREATE TABLE trades (
    order_id INT,
    user_id INT,
    price FLOAT,
    quantity INT,
    status STRING,
    timestamp STRING
);

-- Insert statements for the data
INSERT INTO trades VALUES
    (100101, 111, 9.80, 10, 'Cancelled', '08/17/2022 12:00:00'),
    (100102, 111, 10.00, 10, 'Completed', '08/17/2022 12:00:00'),
    (100259, 148, 5.10, 35, 'Completed', '08/25/2022 12:00:00'),
    (100264, 148, 4.80, 40, 'Completed', '08/26/2022 12:00:00'),
    (100305, 300, 10.00, 15, 'Completed', '09/05/2022 12:00:00'),
    (100400, 178, 9.90, 15, 'Completed', '09/09/2022 12:00:00'),
    (100565, 265, 25.60, 5, 'Completed', '12/19/2022 12:00:00');


-- Drop the users table if it exists
DROP TABLE IF EXISTS users;

-- Create the users table
CREATE TABLE users (
    user_id INT,
    city STRING,
    email STRING,
    signup_date STRING
);

-- Insert statements for the data
INSERT INTO users VALUES
    (111, 'San Francisco', 'rrok10@gmail.com', '08/03/2021 12:00:00'),
    (148, 'Boston', 'sailor9820@gmail.com', '08/20/2021 12:00:00'),
    (178, 'San Francisco', 'harrypotterfan182@gmail.com', '01/05/2022 12:00:00'),
    (265, 'Denver', 'shadower_@hotmail.com', '02/26/2022 12:00:00'),
    (300, 'San Francisco', 'houstoncowboy1122@hotmail.com', '06/30/2022 12:00:00');


-- Drop the reviews table if it exists
DROP TABLE IF EXISTS reviews;

-- Create the reviews table
CREATE TABLE reviews (
    review_id INT,
    user_id INT,
    submit_date STRING,
    product_id INT,
    stars INT
);

-- Insert statements for the data
INSERT INTO reviews VALUES
    (6171, 123, '06/08/2022 00:00:00', 50001, 4),
    (7802, 265, '06/10/2022 00:00:00', 69852, 4),
    (5293, 362, '06/18/2022 00:00:00', 50001, 3),
    (6352, 192, '07/26/2022 00:00:00', 69852, 3),
    (4517, 981, '07/05/2022 00:00:00', 69852, 2);


-- Drop the emails table if it exists
DROP TABLE IF EXISTS emails;

-- Create the emails table
CREATE TABLE emails (
    email_id INT,
    user_id INT,
    signup_date STRING
);

-- Insert statements for the data
INSERT INTO emails VALUES
    (125, 7771, '06/14/2022 00:00:00'),
    (433, 1052, '07/09/2022 00:00:00');


-- Drop the texts table if it exists
DROP TABLE IF EXISTS texts;

-- Create the texts table
CREATE TABLE texts (
    text_id INT,
    email_id INT,
    signup_action STRING,
    action_date STRING
);

-- Insert statements for the data
INSERT INTO texts VALUES
    (6878, 125, 'Confirmed', '06/14/2022 00:00:00'),
    (6997, 433, 'Not Confirmed', '07/09/2022 00:00:00'),
    (7000, 433, 'Confirmed', '07/10/2022 00:00:00');

-- Drop the monthly_cards_issued table if it exists
DROP TABLE IF EXISTS monthly_cards_issued;

-- Create the monthly_cards_issued table
CREATE TABLE monthly_cards_issued (
    card_name STRING,
    issued_amount INT,
    issue_month INT,
    issue_year INT
);

-- Insert statements for the data
INSERT INTO monthly_cards_issued VALUES
    ('Chase Freedom Flex', 55000, 1, 2021),
    ('Chase Freedom Flex', 60000, 2, 2021),
    ('Chase Freedom Flex', 65000, 3, 2021),
    ('Chase Freedom Flex', 70000, 4, 2021),
    ('Chase Sapphire Reserve', 170000, 1, 2021),
    ('Chase Sapphire Reserve', 175000, 2, 2021),
    ('Chase Sapphire Reserve', 180000, 3, 2021);

-- Drop the items_per_order table if it exists
DROP TABLE IF EXISTS items_per_order;

-- Create the items_per_order table
CREATE TABLE items_per_order (
    item_count INT,
    order_occurrences INT
);

-- Insert statements for the data
INSERT INTO items_per_order VALUES
    (1, 500),
    (2, 1000),
    (3, 800),
    (4, 1000);


-- Drop the pharmacy_sales_p1 table if it exists
DROP TABLE IF EXISTS pharmacy_sales_p1;

-- Create the pharmacy_sales_p1 table
CREATE TABLE pharmacy_sales_p1 (
    product_id INT,
    units_sold INT,
    total_sales FLOAT,
    cogs FLOAT,
    manufacturer STRING,
    drug STRING
);

-- Insert statements for the data
INSERT INTO pharmacy_sales_p1 VALUES
    (9, 37410, 293452.54, 208876.01, 'Eli Lilly', 'Zyprexa'),
    (34, 94698, 600997.19, 521182.16, 'AstraZeneca', 'Surmontil'),
    (61, 77023, 500101.61, 419174.97, 'Biogen', 'Varicose Relief'),
    (136, 144814, 1084258.0, 1006447.73, 'Biogen', 'Burkhart');


-- Drop the pharmacy_sales_p2 table if it exists
DROP TABLE IF EXISTS pharmacy_sales_p2;

-- Create the pharmacy_sales_p2 table
CREATE TABLE pharmacy_sales_p2 (
    product_id INT,
    units_sold INT,
    total_sales FLOAT,
    cogs FLOAT,
    manufacturer STRING,
    drug STRING
);

-- Insert statements for the data
INSERT INTO pharmacy_sales_p2 VALUES
    (156, 89514, 3130097.00, 3427421.73, 'Biogen', 'Acyclovir'),
    (25, 222331, 2753546.00, 2974975.36, 'AbbVie', 'Lamivudine and Zidovudine'),
    (50, 90484, 2521023.73, 2742445.90, 'Eli Lilly', 'Dermasorb TA Complete Kit'),
    (98, 110746, 813188.82, 140422.87, 'Biogen', 'Medi-Chord');


-- Drop the pharmacy_sales_p3 table if it exists
DROP TABLE IF EXISTS pharmacy_sales_p3;

-- Create the pharmacy_sales_p3 table
CREATE TABLE pharmacy_sales_p3 (
    product_id INT,
    units_sold INT,
    total_sales FLOAT,
    cogs FLOAT,
    manufacturer STRING,
    drug STRING
);

-- Insert statements for the data
INSERT INTO pharmacy_sales_p3 VALUES
    (94, 132362, 2041758.41, 1373721.70, 'Biogen', 'UP and UP'),
    (9, 37410, 293452.54, 208876.01, 'Eli Lilly', 'Zyprexa'),
    (50, 90484, 2521023.73, 2742445.9, 'Eli Lilly', 'Dermasorb'),
    (61, 77023, 500101.61, 419174.97, 'Biogen', 'Varicose Relief'),
    (136, 144814, 1084258.00, 1006447.73, 'Biogen', 'Burkhart');


DROP TABLE IF EXISTS events;

CREATE TABLE events (
    app_id INT,
    event_type STRING,
    timestamp TIMESTAMP
);

INSERT INTO TABLE events VALUES
(123, 'impression', '2022-07-18 11:36:12'),
(123, 'impression', '2022-07-18 11:37:12'),
(123, 'click', '2022-07-18 11:37:42'),
(234, 'impression', '2022-07-18 14:15:12'),
(234, 'click', '2022-07-18 14:16:12');



-- COMMAND ----------

-- show tables;

-- Drop the table if it already exists
DROP TABLE IF EXISTS transactions ;

-- Create the Hive table
CREATE TABLE transactions (
    user_id INT,
    spend DOUBLE,
    transaction_date TIMESTAMP
);

-- Insert data into the table
INSERT INTO TABLE transactions VALUES
(111, 100.50, '2022-01-08 12:00:00'),
(111, 55.00, '2022-01-10 12:00:00'),
(121, 36.00, '2022-01-18 12:00:00'),
(145, 24.99, '2022-01-26 12:00:00'),
(111, 89.60, '2022-02-05 12:00:00');


-- Create the Hive table
drop table if exists activities;
CREATE TABLE activities (
    activity_id INT,
    user_id INT,
    activity_type STRING,
    time_spent DOUBLE,
    activity_date TIMESTAMP
);

-- Insert data into the table
INSERT INTO TABLE activities VALUES
(7274, 123, 'open', 4.50, '2022-06-22 12:00:00'),
(2425, 123, 'send', 3.50, '2022-06-22 12:00:00'),
(1413, 456, 'send', 5.67, '2022-06-23 12:00:00'),
(1414, 789, 'chat', 11.00, '2022-06-25 12:00:00'),
(2536, 456, 'open', 3.00, '2022-06-25 12:00:00');


-- Drop the table if it already exists
DROP TABLE IF EXISTS age_breakdown;

-- Create the Hive table
CREATE TABLE age_breakdown (
    user_id INT,
    age_bucket STRING
);

-- Insert data into the table
INSERT INTO TABLE age_breakdown VALUES
(123, '31-35'),
(456, '26-30'),
(789, '21-25');


-- Drop the table if it already exists
DROP TABLE IF EXISTS tweets_hd;

-- Create the Hive table
CREATE TABLE tweets_hd (
    user_id INT,
    tweet_date TIMESTAMP,
    tweet_count INT
);

-- Insert data into the table
INSERT INTO TABLE tweets_hd VALUES
(111, '2022-06-01 00:00:00', 2),
(111, '2022-06-02 00:00:00', 1),
(111, '2022-06-03 00:00:00', 3),
(111, '2022-06-04 00:00:00', 4),
(111, '2022-06-05 00:00:00', 5);


-- Drop the table if it already exists
DROP TABLE IF EXISTS product_spend;

-- Create the Hive table
CREATE TABLE product_spend (
    category STRING,
    product STRING,
    user_id INT,
    spend DOUBLE,
    transaction_date TIMESTAMP
);

-- Insert data into the table
INSERT INTO TABLE product_spend VALUES
('appliance', 'refrigerator', 165, 246.00, '2021-12-26 12:00:00'),
('appliance', 'refrigerator', 123, 299.99, '2022-03-02 12:00:00'),
('appliance', 'washing machine', 123, 219.80, '2022-03-02 12:00:00'),
('electronics', 'vacuum', 178, 152.00, '2022-04-05 12:00:00'),
('electronics', 'wireless headset', 156, 249.90, '2022-07-08 12:00:00'),
('electronics', 'vacuum', 145, 189.00, '2022-07-15 12:00:00');


-- Drop the table if it already exists
DROP TABLE IF EXISTS artists;

-- Create the Hive table
CREATE TABLE artists (
    artist_id INT,
    artist_name STRING,
    label_owner STRING
);

-- Insert data into the table
INSERT INTO TABLE artists VALUES
(101, 'Ed Sheeran', 'Warner Music Group'),
(120, 'Drake', 'Warner Music Group'),
(125, 'Bad Bunny', 'Rimas Entertainment');

-- Drop the table if it already exists
DROP TABLE IF EXISTS songs;

-- Create the Hive table
CREATE TABLE songs (
    song_id INT,
    artist_id INT,
    name STRING
);

-- Insert data into the table
INSERT INTO TABLE songs VALUES
(55511, 101, 'Perfect'),
(45202, 101, 'Shape of You'),
(22222, 120, 'One Dance'),
(19960, 120, 'Hotline Bling');

-- Drop the table if it already exists
DROP TABLE IF EXISTS global_song_rank;

-- Create the Hive table
CREATE TABLE global_song_rank (
    day INT,
    song_id INT,
    rank INT
);

-- Insert data into the table
INSERT INTO TABLE global_song_rank VALUES
(1, 45202, 5),
(3, 45202, 2),
(1, 19960, 3),
(9, 19960, 15);
