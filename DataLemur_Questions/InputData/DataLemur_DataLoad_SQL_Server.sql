-- Databricks notebook source
use datalemur_q;

-- Create the candidates_skills table
-- Drop table if it exists
DROP TABLE IF EXISTS candidates_skills;

-- Create table
CREATE TABLE candidates_skills (
    candidate_id INT,
    skill NVARCHAR(255)
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
-- Drop table if it exists
DROP TABLE IF EXISTS tweets;

-- Create table
CREATE TABLE tweets (
    tweet_id INT,
    user_id INT,
    msg NVARCHAR(1000),
    tweet_date NVARCHAR(1000)
);

-- Insert statements for the new data
INSERT INTO tweets VALUES
    (214252, 111, 'Am considering taking Tesla private at $420. Funding secured.', '2021/12/30 00:00:00'),
    (739252, 111, 'Despite the constant negative press covfefe', '2022/01/01 00:00:00'),
    (846402, 111, 'Following @NickSinghTech on Twitter changed my life!', '2022/02/14 00:00:00'),
    (241425, 254, 'If the salary is so competitive why won’t you tell me what it is?', '2022/03/01 00:00:00'),
    (231574, 148, 'I no longer have a manager. I can''t be managed', '2022/03/23 00:00:00');


-- Create the pages table
-- Drop table if it exists
DROP TABLE IF EXISTS pages;

-- Create table
CREATE TABLE pages (
    page_id INT,
    page_name NVARCHAR(255)
);

-- Insert statements for the data
INSERT INTO pages VALUES
    (20001, 'SQL Solutions'),
    (20045, 'Brain Exercises'),
    (20701, 'Tips for Data Analysts');


-- Create the likes table
-- Drop table if it exists
DROP TABLE IF EXISTS page_likes;

-- Create table
CREATE TABLE page_likes (
    user_id INT,
    page_id INT,
    liked_date NVARCHAR(1000)
);

-- Insert statements for the new data
INSERT INTO page_likes VALUES
    (111, 20001, '2022/04/08 00:00:00'),
    (121, 20045, '2022/03/12 00:00:00'),
    (156, 20001, '2022/07/25 00:00:00');


-- Drop table if it exists
DROP TABLE IF EXISTS parts_assembly;

-- Create table
CREATE TABLE parts_assembly (
    part NVARCHAR(255),
    finish_date NVARCHAR(1000),
    assembly_step INT
);

-- Insert statements for the data
INSERT INTO parts_assembly VALUES
    ('battery', '2022/01/22 00:00:00', 1),
    ('battery', '2022/02/22 00:00:00', 2),
    ('battery', '2022/03/22 00:00:00', 3),
    ('bumper', '2022/01/22 00:00:00', 1),
    ('bumper', '2022/02/22 00:00:00', 2),
    ('bumper', NULL, 3),
    ('bumper', NULL, 4);


-- Drop the viewership table if it exists
DROP TABLE IF EXISTS viewership;

-- Create table
CREATE TABLE viewership (
    user_id INT,
    device_type NVARCHAR(255),
    view_time NVARCHAR(1000)
);

-- Insert statements for the data
INSERT INTO viewership VALUES
    (123, 'tablet', '2022/01/02 00:00:00'),
    (125, 'laptop', '2022/01/07 00:00:00'),
    (128, 'laptop', '2022/02/09 00:00:00'),
    (129, 'phone', '2022/02/09 00:00:00'),
    (145, 'tablet', '2022/02/24 00:00:00');


-- Drop table if it exists
DROP TABLE IF EXISTS posts;

-- Create table
CREATE TABLE posts (
    user_id INT,
    post_id INT,
    post_date NVARCHAR(1000),
    post_content NVARCHAR(1000)
);

-- Insert statements for the data
INSERT INTO posts VALUES
    (151652, 599415, '2021/07/10 12:00:00', 'Need a hug'),
    (661093, 624356, '2021/07/29 13:00:00', 'Bed. Class 8-12. Work 12-3. Gym 3-5 or 6. Then class 6-10. Another day that''s gonna fly by. I miss my girlfriend'),
    (004239, 784254, '2021/07/04 11:00:00', 'Happy 4th of July!'),
    (661093, 442560, '2021/07/08 14:00:00', 'Just going to cry myself to sleep after watching Marley and Me.'),
    (151652, 111766, '2021/07/12 19:00:00', 'I''m so done with covid - need travelling ASAP!');


-- Drop table if it exists
DROP TABLE IF EXISTS messages;

-- Create table
CREATE TABLE messages (
    message_id INT,
    sender_id INT,
    receiver_id INT,
    content NVARCHAR(1000),
    sent_date NVARCHAR(1000)
);

-- Insert statements for the data
INSERT INTO messages VALUES
    (901, 3601, 4500, 'You up?', '2022/08/03 00:00:00'),
    (902, 4500, 3601, 'Only if you''re buying', '2022/08/03 00:00:00'),
    (743, 3601, 8752, 'Let''s take this offline', '2022/06/14 00:00:00'),
    (922, 3601, 4500, 'Get on the call', '2022/08-10 00:00:00');


-- Drop table if it exists
DROP TABLE IF EXISTS job_listings;

-- Create table
CREATE TABLE job_listings (
    job_id INT,
    company_id INT,
    title NVARCHAR(255),
    description NVARCHAR(1000)
);

-- Insert statements for the data
INSERT INTO job_listings VALUES
    (248, 827, 'Business Analyst', 'Business analyst evaluates past and current business data with the primary goal of improving decision-making processes within organizations.'),
    (149, 845, 'Business Analyst', 'Business analyst evaluates past and current business data with the primary goal of improving decision-making processes within organizations.'),
    (945, 345, 'Data Analyst', 'Data analyst reviews data to identify key insights into a business''s customers and ways the data can be used to solve problems.'),
    (164, 345, 'Data Analyst', 'Data analyst reviews data to identify key insights into a business''s customers and ways the data can be used to solve problems.'),
    (172, 244, 'Data Engineer', 'Data engineer works in a variety of settings to build systems that collect, manage, and convert raw data into usable information for data scientists and business analysts to interpret.');


-- Drop table if it exists
DROP TABLE IF EXISTS trades;

-- Create table
CREATE TABLE trades (
    order_id INT,
    user_id INT,
    price FLOAT,
    quantity INT,
    status NVARCHAR(255),
    timestamp NVARCHAR(1000)
);

-- Insert statements for the data
INSERT INTO trades VALUES
    (100101, 111, 9.80, 10, 'Cancelled', '2022/08/17 12:00:00'),
    (100102, 111, 10.00, 10, 'Completed', '2022/08/17 12:00:00'),
    (100259, 148, 5.10, 35, 'Completed', '2022/08/25 12:00:00'),
    (100264, 148, 4.80, 40, 'Completed', '2022/08/26 12:00:00'),
    (100305, 300, 10.00, 15, 'Completed', '2022/09/05 12:00:00'),
    (100400, 178, 9.90, 15, 'Completed', '2022/09/09 12:00:00'),
    (100565, 265, 25.60, 5, 'Completed', '2022/12/19 12:00:00');


-- Drop table if it exists
DROP TABLE IF EXISTS users;

-- Create table
CREATE TABLE users (
    user_id INT,
    city NVARCHAR(255),
    email NVARCHAR(255),
    signup_date NVARCHAR(1000)
);

-- Insert statements for the data
INSERT INTO users VALUES
    (111, 'San Francisco', 'rrok10@gmail.com', '2021/08/03 12:00:00'),
    (148, 'Boston', 'sailor9820@gmail.com', '2021/08/20 12:00:00'),
    (178, 'San Francisco', 'harrypotterfan182@gmail.com', '2022/01/05 12:00:00'),
    (265, 'Denver', 'shadower_@hotmail.com', '2022/02/26 12:00:00'),
    (300, 'San Francisco', 'houstoncowboy1122@hotmail.com', '2022/06/30 12:00:00');


-- Drop table if it exists
DROP TABLE IF EXISTS reviews;

-- Create table
CREATE TABLE reviews (
    review_id INT,
    user_id INT,
    submit_date NVARCHAR(1000),
    product_id INT,
    stars INT
);

-- Insert statements for the data
INSERT INTO reviews VALUES
    (6171, 123, '2022/06/08 00:00:00', 50001, 4),
    (7802, 265, '2022/06/10 00:00:00', 69852, 4),
    (5293, 362, '2022/06/18 00:00:00', 50001, 3),
    (6352, 192, '2022/07/26 00:00:00', 69852, 3),
    (4517, 981, '2022/07/05 00:00:00', 69852, 2);


-- Drop table if it exists
DROP TABLE IF EXISTS emails;

-- Create table
CREATE TABLE emails (
    email_id INT,
    user_id INT,
    signup_date NVARCHAR(1000)
);

-- Insert statements for the data
INSERT INTO emails VALUES
    (125, 7771, '2022/06/14 00:00:00'),
    (433, 1052, '2022/07/09 00:00:00');


-- Drop table if it exists
DROP TABLE IF EXISTS texts;

-- Create table
CREATE TABLE texts (
    text_id INT,
    email_id INT,
    signup_action NVARCHAR(255),
    action_date NVARCHAR(1000)
);

-- Insert statements for the data
INSERT INTO texts VALUES
    (6878, 125, 'Confirmed', '2022/06/14 00:00:00'),
    (6997, 433, 'Not Confirmed', '2022/07/09 00:00:00'),
    (7000, 433, 'Confirmed', '2022/07/10 00:00:00');


-- Drop table if it exists
DROP TABLE IF EXISTS monthly_cards_issued;

-- Create table
CREATE TABLE monthly_cards_issued (
    card_name NVARCHAR(255),
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


-- Drop table if it exists
DROP TABLE IF EXISTS items_per_order;

-- Create table
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


-- Drop the table if it exists
DROP TABLE IF EXISTS pharmacy_sales_p1;

-- Create the table
CREATE TABLE pharmacy_sales_p1 (
    product_id INT,
    units_sold INT,
    total_sales FLOAT,
    cogs FLOAT,
    manufacturer NVARCHAR(255),
    drug NVARCHAR(255)
);

-- Insert statements for the data
INSERT INTO pharmacy_sales_p1 VALUES
    (9, 37410, 293452.54, 208876.01, 'Eli Lilly', 'Zyprexa'),
    (34, 94698, 600997.19, 521182.16, 'AstraZeneca', 'Surmontil'),
    (61, 77023, 500101.61, 419174.97, 'Biogen', 'Varicose Relief'),
    (136, 144814, 1084258.0, 1006447.73, 'Biogen', 'Burkhart');


-- Drop the table if it exists
DROP TABLE IF EXISTS pharmacy_sales_p2;

-- Create the table
CREATE TABLE pharmacy_sales_p2 (
    product_id INT,
    units_sold INT,
    total_sales FLOAT,
    cogs FLOAT,
    manufacturer NVARCHAR(255),
    drug NVARCHAR(255)
);

-- Insert statements for the data
INSERT INTO pharmacy_sales_p2 VALUES
    (156, 89514, 3130097.00, 3427421.73, 'Biogen', 'Acyclovir'),
    (25, 222331, 2753546.00, 2974975.36, 'AbbVie', 'Lamivudine and Zidovudine'),
    (50, 90484, 2521023.73, 2742445.90, 'Eli Lilly', 'Dermasorb TA Complete Kit'),
    (98, 110746, 813188.82, 140422.87, 'Biogen', 'Medi-Chord');


-- Drop the table if it exists
DROP TABLE IF EXISTS pharmacy_sales_p3;

-- Create the table
CREATE TABLE pharmacy_sales_p3 (
    product_id INT,
    units_sold INT,
    total_sales FLOAT,
    cogs FLOAT,
    manufacturer NVARCHAR(255),
    drug NVARCHAR(255)
);

-- Insert statements for the data
INSERT INTO pharmacy_sales_p3 VALUES
    (94, 132362, 2041758.41, 1373721.70, 'Biogen', 'UP and UP'),
    (9, 37410, 293452.54, 208876.01, 'Eli Lilly', 'Zyprexa'),
    (50, 90484, 2521023.73, 2742445.9, 'Eli Lilly', 'Dermasorb'),
    (61, 77023, 500101.61, 419174.97, 'Biogen', 'Varicose Relief'),
    (136, 144814, 1084258.00, 1006447.73, 'Biogen', 'Burkhart');

-- Drop the table if it exists
DROP TABLE IF EXISTS events;

-- Create the table
CREATE TABLE events (
    app_id INT,
    event_type NVARCHAR(255),
    timestamp NVARCHAR(1000)
);

-- Insert statements for the data
INSERT INTO events VALUES
(123, 'impression', '2022/07/18 00:00:00'),
(123, 'impression', '2022/07/18 00:00:00'),
(123, 'click', '2022/07/18 00:00:00'),
(234, 'impression', '2022/07/18 00:00:00'),
(234, 'click', '2022/07/18 00:00:00');

-- Drop the table if it already exists
DROP TABLE IF EXISTS transactions;

-- Create the table
CREATE TABLE transactions (
    user_id INT,
    spend FLOAT,
    transaction_date NVARCHAR(1000)
);

-- Insert data into the table
INSERT INTO transactions VALUES
(111, 100.50, '2022/01/08 12:00:00'),
(111, 55.00, '2022/01/10 12:00:00'),
(121, 36.00, '2022/01/18 12:00:00'),
(145, 24.99, '2022/01/26 12:00:00'),
(111, 89.60, '2022/02/05 12:00:00');

-- Drop the table if it already exists
DROP TABLE IF EXISTS activities;

-- Create the table
CREATE TABLE activities (
    activity_id INT,
    user_id INT,
    activity_type NVARCHAR(255),
    time_spent FLOAT,
    activity_date NVARCHAR(1000)
);

-- Insert data into the table
INSERT INTO activities VALUES
(7274, 123, 'open', 4.50, '2022/06/22 12:00:00'),
(2425, 123, 'send', 3.50, '2022/06/22 12:00:00'),
(1413, 456, 'send', 5.67, '2022/06/23 12:00:00'),
(1414, 789, 'chat', 11.00, '2022/06/25 12:00:00'),
(2536, 456, 'open', 3.00, '2022/06/25 12:00:00');

-- Drop the table if it already exists
DROP TABLE IF EXISTS age_breakdown;

-- Create the table
CREATE TABLE age_breakdown (
    user_id INT,
    age_bucket NVARCHAR(255)
);

-- Insert data into the table
INSERT INTO age_breakdown VALUES
(123, '31-35'),
(456, '26-30'),
(789, '21-25');

-- Drop the table if it already exists
DROP TABLE IF EXISTS tweets_hd;

-- Create the table
CREATE TABLE tweets_hd (
    user_id INT,
    tweet_date NVARCHAR(1000),
    tweet_count INT
);

-- Insert data into the table
INSERT INTO tweets_hd VALUES
(111, '2022/06/01 00:00:00', 2),
(111, '2022/06/02 00:00:00', 1),
(111, '2022/06/03 00:00:00', 3),
(111, '2022/06/04 00:00:00', 4),
(111, '2022/06/05 00:00:00', 5);

-- Drop the table if it already exists
DROP TABLE IF EXISTS product_spend;

-- Create the table
CREATE TABLE product_spend (
    category NVARCHAR(255),
    product NVARCHAR(255),
    user_id INT,
    spend FLOAT,
    transaction_date NVARCHAR(1000)
);

-- Insert data into the table
INSERT INTO product_spend VALUES
('appliance', 'refrigerator', 165, 246.00, '2021/12/26 12:00:00'),
('appliance', 'refrigerator', 123, 299.99, '2022/03/02 12:00:00'),
('appliance', 'washing machine', 123, 219.80, '2022/03/02 12:00:00'),
('electronics', 'vacuum', 178, 152.00, '2022/04/05 12:00:00'),
('electronics', 'wireless headset', 156, 249.90, '2022/07/08 12:00:00'),
('electronics', 'vacuum', 145, 189.00, '2022/07/15 12:00:00');

-- Drop the table if it already exists
DROP TABLE IF EXISTS artists;

-- Create the table
CREATE TABLE artists (
    artist_id INT,
    artist_name NVARCHAR(255),
    label_owner NVARCHAR(255)
);

-- Insert data into the table
INSERT INTO artists VALUES
(101, 'Ed Sheeran', 'Warner Music Group'),
(120, 'Drake', 'Warner Music Group'),
(125, 'Bad Bunny', 'Rimas Entertainment');

-- Drop the table if it already exists
DROP TABLE IF EXISTS songs;

-- Create the table
CREATE TABLE songs (
    song_id INT,
    artist_id INT,
    name NVARCHAR(255)
);

-- Insert data into the table
INSERT INTO songs VALUES
(55511, 101, 'Perfect'),
(45202, 101, 'Shape of You'),
(22222, 120, 'One Dance'),
(19960, 120, 'Hotline Bling');

-- Drop the table if it already exists
DROP TABLE IF EXISTS global_song_rank;

-- Create the table
CREATE TABLE global_song_rank (
    day INT,
    song_id INT,
    rank INT
);

-- Insert data into the table
INSERT INTO global_song_rank VALUES
(1, 45202, 5),
(3, 45202, 2),
(1, 19960, 3),
(9, 19960, 15);
