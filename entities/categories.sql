SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE categories (
  id int(11) NOT NULL,
  names varchar(50) NOT NULL
);


INSERT INTO categories (id, names) VALUES
(1, 'Action & adventure'),
(2, 'Classic'),
(3, 'Comedies'),
(4, 'Dramas'),
(5, 'Horror'),
(6, 'Romantic'),
(7, 'Sci - Fi & Fantasy'),
(8, 'Sports'),
(9, 'Thrillers'),
(10, 'Documentaries'),
(12, 'Teen'),
(13, 'Children & family'),
(14, 'Anime'),
(15, 'Independent'),
(16, 'Foreign'),
(17, 'Music'),
(18, 'Christmas'),
(19, 'Others'),
(20, 'Cartoon');


ALTER TABLE categories
  ADD PRIMARY KEY (id);


ALTER TABLE categories
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

