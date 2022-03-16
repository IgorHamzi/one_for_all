CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.plans(
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    value DOUBLE NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.user(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    plan_id INT NOT NULL,
    signature_date DATE NOT NULL,
    FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.artists(
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.albums(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_id INT NOT NULL,
    release_year YEAR NOT NULL,
    name VARCHAR(50) NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.songs(
    song_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    duration INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albums(album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.reproductions(
    reproductions_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    reproduction_date DATETIME NOT NULL,
    FOREIGN KEY (user_id ) REFERENCES user(user_id ),
    FOREIGN KEY (song_id) REFERENCES songs(song_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.follow(
    follow_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (user_id ) REFERENCES user(user_id ),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.plans (name, value)
VALUES
  ('gratuito', 0),
  ('familiar', '7.99'),
  ('universitario', '5.99'),
  ('pessoal', '6.99');
  
INSERT INTO SpotifyClone.user (name, age, plan_id, signature_date)
VALUES
  ('Thati', 23, 9, '2019-10-20'),
  ('Cintia', 35, 10, '2017-12-30'),
  ('Bill', 20, 11, '2019-06-05'),
  ('Roger', 45, 12, '2020-05-13'),
  ('Norman', 58, 12, '2017-02-17'),
  ('Patrick', 33, 10, '2017-01-06'),
  ('Vivian', 26, 11, '2018-01-05'),
  ('Carol', 19, 11, '2018-02-14'),
  ('Angelina', 42, 10, '2018-04-29'),
  ('Paul', 46, 10, '2017-01-17')
  
  
INSERT INTO SpotifyClone.artists (name)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon'),
  ('Tyler Isle'),
  ('Fog')

INSERT INTO SpotifyClone.albums (artist_id,release_year,name)
VALUES
  ('1', '1990', 'Envious'),
  ('1', '1993', 'Exuberant'),
  ('2', '1995', 'Hallowed Steam'),
  ('3', '1998', 'Incandescent'),
  ('4', '2001', 'Temporary Culture'),
  ('4', '2003', 'Library of liberty'),
  ('5', '2007', 'Chained Down'),
  ('5', '2012', 'Cabinet of fools'),
  ('5', '2015', 'No guarantees'),
  ('6', '2015', 'Apparatus')

INSERT INTO SpotifyClone.songs (name, duration, album_id)
VALUES
  ('Soul For Us', '200', '1'),
  ('Reflections Of Magic', '163', '1'),
  ('Dance With Her Own', '116', '1'),
  ('Troubles Of My Inner Fire', '203', '2'),
  ('Time Fireworks', '152', '2'),
  ('Magic Circus', '105', '3'),
  ('Honey, So Do I', '207', '3'),
  ('Sweetie, Lets Go Wild', '139', '3'),
  ('Fantasy For Me', '100', '4'),
  ('Celebration Of More', '146', '4'),
  ('Rock His Everything', '223', '4'),
  ('Home Forever', '231', '4'),
  ('Diamond Power', '241', '4'),
  ('Lets Be Silly', '132', '4'),
  ('Thang Of Thunder', '240', '5'),
  ('Words Of Her Life', '185', '5'),
  ('Need Of The Evening', '190', '6'),
  ('History Of My Roses', '222', '6'),
  ('Without My Love', '111', '6'),
  ('Walking And Game', '123', '6'),
  ('Young And Father', '197', '6'),
  ('Finding My Traditions', '179', '7'),
  ('Walking And Man', '229', '7'),
  ('Hard And Time', '135', '7'),
  ('Honey Im A Lone Wolf', '150', '7'),
  ('She Thinks I Wont Stay Tonight', '166', '8'),
  ('He Heard Youre Bad For Me', '154', '8'),
  ('He Hopes We Cant Stay', '210', '8'),
  ('Hes Walking Away', '117', '8'),
  ('I Know I Know', '159', '9'),
  ('Hes Trouble', '138', '9'),
  ('I Heard I Want To Bo Alone', '120', '9'),
  ('I Ride Alone', '151', '9'),
  ('Honey', '79', '10'),
  ('You Cheated On Me', '95', '10'),
  ('Baby', '213', '10'),
  ('Wouldnt It Be Nice', '136', '10'),
  ('You Make Me Feel So', '83', '10')
  ('She Knows', '244', '3'),
  ('Without My Streets', '176', '5'),

INSERT INTO SpotifyClone.reproductions (user_id, song_id, reproduction_date)
VALUES
  ('11', '48', '2020-02-28 10:45:55'),
  ('11', '37', '2020-05-02 05:30:35'),
  ('11', '35', '2020-03-06 11:22:33'),
  ('11', '27', '2020-08-05 08:05:17'),
  ('11', '28', '2020-09-14 16:32:22'),
  ('12', '46', '2020-01-02 07:40:33'),
  ('12', '36', '2020-05-16 06:16:22'),
  ('12', '33', '2020-10-09 12:27:48'),
  ('12', '50', '2020-09-21 13:14:46'),
  ('13', '20', '2020-11-13 16:55:13'),
  ('13', '17', '2020-12-05 18:38:30'),
  ('13', '38', '2020-07-30 10:00:00'),
  ('14', '16', '2021-08-15 17:10:10'),
  ('14', '47', '2021-07-10 15:20:30'),
  ('14', '39', '2021-01-09 01:44:33'),
  ('15', '21', '2020-07-03 19:33:28'),
  ('15', '25', '2017-02-24 21:14:22'),
  ('15', '27', '2020-08-06 15:23:43'),
  ('15', '15', '2020-11-10 13:52:27'),
  ('16', '51', '2019-02-07 20:33:48'),
  ('16', '41', '2017-01-24 00:31:17'),
  ('16', '42', '2017-10-12 12:35:20'),
  ('16', '34', '2018-05-29 14:56:41'),
  ('17', '19', '2018-05-09 22:30:49'),
  ('17', '18', '2020-07-27 12:52:58'),
  ('17', '24', '2018-01-16 18:40:43'),
  ('18', '50', '2018-03-21 16:56:40'),
  ('18', '52', '2020-10-18 13:38:05'),
  ('18', '43', '2019-05-25 08:14:03'),
  ('18', '45', '2021-08-15 21:37:09'),
  ('19', '29', '2021-05-24 17:23:45'),
  ('19', '30', '2018-12-07 22:48:52'),
  ('19', '22', '2021-03-14 06:14:26'),
  ('19', '53', '2020-04-01 03:36:00'),
  ('20', '32', '2017-02-06 08:21:34'),
  ('20', '33', '2017-12-04 05:33:43'),
  ('20', '25', '2017-07-27 05:24:49'),
  ('20', '26', '2017-12-25 01:03:57')
  
INSERT INTO SpotifyClone.follow (user_id, artist_id)
VALUES
  ('11', '1'),
  ('11', '4'),
  ('11', '3'),
  ('12', '1'),
  ('12', '3'),
  ('13', '2'),
  ('13', '1'),
  ('14', '4'),
  ('15', '5'),
  ('15', '6'),
  ('16', '6'),
  ('16', '3'),
  ('16', '1'),
  ('17', '2'),
  ('17', '5'),
  ('18', '1'),
  ('18', '5'),
  ('19', '6'),
  ('19', '4'),
  ('19', '3'),
  ('20', '2'),
  ('20', '6')
