SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE entities (
  id int(11) NOT NULL,
  names varchar(250) NOT NULL,
  thumbnail varchar(250) NOT NULL,
  preview varchar(250) NOT NULL,
  categoryId int(11) NOT NULL
);


INSERT INTO entities (id, names, thumbnail, preview, categoryId) VALUES
(1, 'Friends', 'entities/thumbnails/friends.jpg', 'entities/previews/3.mp4', 3),
(2, 'The Simpsons', 'entities/thumbnails/simpsons.jpg', 'entities/previews/6.mp4', 20),
(3, 'Toy Story', 'entities/thumbnails/toy_story.jpg', 'entities/previews/3.mp4', 13),
(4, 'Dune', 'entities/thumbnails/dune.jpg', 'entities/previews/2.mp4', 1),
(5, 'Suits', 'entities/thumbnails/suits.jpg', 'entities/previews/1.mp4', 4),
(6, 'Crash Landing on You', 'entities/thumbnails/cloy.jpg', 'entities/previews/4.mp4', 4),
(7, 'Brooklyn Nine Nine', 'entities/thumbnails/B99.jpg', 'entities/previews/5.mp4', 3),
(8, 'That 70s Show', 'entities/thumbnails/70s_show.jpg', 'entities/previews/6.mp4', 3),
(9, 'Jujutsu Kaisen', 'entities/thumbnails/jjk.jpg', 'entities/previews/2.mp4', 14),
(10, 'Spongebob Squarepants', 'entities/thumbnails/sbsp.jpg', 'entities/previews/1.mp4', 20),
(11, 'Death Note', 'entities/thumbnails/dn.jpg', 'entities/previews/3.mp4', 14),
(12, 'Attack On Titan', 'entities/thumbnails/aot.jpg', 'entities/previews/4.mp4', 14),
(13, 'Kung Fu Panda', 'entities/thumbnails/kungfu.jpg', 'entities/previews/5.mp4', 20),
(14, 'Power Puff Girls', 'entities/thumbnails/ppg.jpg', 'entities/previews/6.mp4', 20),
(15, 'Jurassic Park', 'entities/thumbnails/jurassic.jpg', 'entities/previews/1.mp4', 9),
(16, 'La La Land', 'entities/thumbnails/lalaland.jpg', 'entities/previews/4.mp4', 17),
(17, 'Home Alone', 'entities/thumbnails/home_alone.jpg', 'entities/previews/5.mp4', 13),
(18, 'SpyXFamily', 'entities/thumbnails/spyxfamily.jpg', 'entities/previews/6.mp4', 13),
(19, 'Top Gun: Maverick', 'entities/thumbnails/topgun.jpg', 'entities/previews/2.mp4', 1),
(20, 'Jaws', 'entities/thumbnails/jaws.jpg', 'entities/previews/1.mp4', 9),
(21, 'Gone Girl', 'entities/thumbnails/gonegirl.jpg', 'entities/previews/4.mp4', 9),
(22, 'Into the Storm', 'entities/thumbnails/intothestorm.jpg', 'entities/previews/3.mp4', 9),
(23, 'Mission Impossible', 'entities/thumbnails/missionimpossible.jpg', 'entities/previews/5.mp4', 1),
(24, 'The Batman', 'entities/thumbnails/batman.jpg', 'entities/previews/6.mp4', 1),
(25, 'Inception', 'entities/thumbnails/inception.jpg', 'entities/previews/2.mp4', 1),
(26, 'The Matrix Resurrection', 'entities/thumbnails/matrix.jpg', 'entities/previews/3.mp4', 1),
(27, 'Gravity', 'entities/thumbnails/gravity.jpg', 'entities/previews/4.mp4', 7),
(28, 'Game of Thrones', 'entities/thumbnails/got.jpg', 'entities/previews/3.mp4', 4),
(29, 'Stranger Things', 'entities/thumbnails/strangerthings.jpg', 'entities/previews/2.mp4', 4),
(30, 'Interstellar', 'entities/thumbnails/interstellar.jpg', 'entities/previews/1.mp4', 7);

ALTER TABLE entities
  ADD PRIMARY KEY (id),
  ADD KEY categoryId (categoryId);


ALTER TABLE entities
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;


ALTER TABLE entities
  ADD CONSTRAINT entities_ibfk_1 FOREIGN KEY (categoryId) REFERENCES categories (id) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
