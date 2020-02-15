-- ======== ENV: PostgreSQL v10.0 ========

-- ======== QUIZ 1 AND 2 SETUP ========

DROP TABLE IF EXISTS transaction;

CREATE TABLE transaction (
	transanction_timestamp timestamp,
	transaction_id int,
	customer_id int,
	product_id int
);

INSERT INTO transaction 
VALUES
('2019-04-06 09:05:14', 1, 16, 19381),
('2020-01-28 14:29:41', 2, 3, 14066),
('2019-05-22 03:51:06', 3, 22, 17740),
('2019-08-26 13:04:11', 4, 3, 15280),
('2019-11-25 10:15:33', 5, 18, 19623),
('2018-10-25 01:42:03', 6, 30, 16074),
('2018-12-11 14:18:12', 7, 3, 19114),
('2018-11-11 00:13:59', 8, 30, 16683),
('2019-05-15 17:06:42', 9, 19, 18979),
('2018-09-28 11:51:59', 10, 25, 18315),
('2018-12-11 22:50:12', 11, 27, 10960),
('2018-08-22 17:34:55', 12, 8, 13278),
('2019-11-10 08:32:52', 13, 27, 12581),
('2019-04-10 01:37:59', 14, 22, 10166),
('2019-01-12 12:57:18', 15, 14, 18847),
('2018-08-15 05:15:05', 16, 16, 12526),
('2019-08-14 18:21:33', 17, 18, 13682),
('2019-09-03 18:28:14', 18, 10, 11150),
('2019-04-03 07:47:01', 19, 25, 17849),
('2018-08-08 01:12:08', 20, 15, 14774),
('2018-08-10 13:37:10', 21, 29, 18659),
('2019-11-03 22:13:57', 22, 19, 12864),
('2019-10-26 11:10:59', 23, 12, 12180),
('2018-07-19 21:26:04', 24, 27, 12185),
('2019-01-17 05:19:02', 25, 2, 17114),
('2018-09-29 11:02:17', 26, 14, 18566),
('2019-08-11 03:13:29', 27, 13, 11803),
('2018-12-29 14:09:53', 28, 14, 14497),
('2018-11-03 08:44:27', 29, 23, 13537),
('2019-05-21 21:27:43', 30, 6, 17957),
('2019-03-12 06:52:03', 31, 7, 19204),
('2019-08-14 12:28:39', 32, 4, 12889),
('2019-01-19 13:29:27', 33, 12, 14924),
('2019-08-11 12:27:35', 34, 3, 10934),
('2019-04-14 17:33:58', 35, 19, 16049),
('2018-10-21 11:07:30', 36, 19, 17571),
('2018-10-30 21:55:27', 37, 10, 14483),
('2019-02-14 23:53:38', 38, 22, 13754),
('2019-05-21 04:01:30', 39, 27, 16119),
('2018-06-27 11:15:28', 40, 27, 19356),
('2019-08-15 19:02:10', 41, 11, 12407),
('2020-01-10 12:44:22', 42, 25, 16859),
('2018-11-08 19:31:02', 43, 3, 19952),
('2019-05-18 13:25:07', 44, 7, 13951),
('2018-09-19 18:41:04', 45, 29, 16102),
('2018-06-29 09:04:38', 46, 9, 15165),
('2018-10-27 21:14:14', 47, 17, 11757),
('2019-07-31 07:39:18', 48, 3, 16204),
('2018-07-20 02:57:36', 49, 28, 15125),
('2019-06-28 17:44:27', 50, 14, 12396)
;

-- ======== QUIZ 3 SETUP ========

DROP TABLE IF EXISTS user_relationship;

CREATE TABLE user_relationship (
	friend1_id int,
   friend2_id int
);

INSERT INTO user_relationship
VALUES
(1,15),
(2,10),
(3,18),
(4,7),
(5,2),
(6,19),
(7,4),
(8,25),
(9,2),
(10,2)
;