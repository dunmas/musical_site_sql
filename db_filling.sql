INSERT INTO	genres
VALUES(1, 'Pop');

INSERT INTO	genres
VALUES(2, 'Rock');

INSERT INTO	genres
VALUES(3, 'Rap');

INSERT INTO	genres
VALUES(4, 'Country');

INSERT INTO	genres
VALUES(5, 'Soul');
--
INSERT INTO performers(alias)
VALUES('K-DOT');

INSERT INTO performers(alias)
VALUES('Billy Bob');

INSERT INTO performers(alias)
VALUES('Michael Jackson');

INSERT INTO performers(alias)
VALUES('Funky Monkey');

INSERT INTO performers(alias)
VALUES('Madonna');

INSERT INTO performers(alias)
VALUES('Eminem');

INSERT INTO performers(alias)
VALUES('The Weeknd');

INSERT INTO performers(alias)
VALUES('Tommy Bommy');
--
INSERT INTO albums(name, cr_year)
VALUES('damn', '2017');

INSERT INTO albums(name, cr_year)
VALUES('abc', '2019');

INSERT INTO albums(name, cr_year)
VALUES('gone', '1988');

INSERT INTO albums(name, cr_year)
VALUES('rules', '2001');

INSERT INTO albums(name, cr_year)
VALUES('show', '2003');

INSERT INTO albums(name, cr_year)
VALUES('week', '2018');

INSERT INTO albums(name, cr_year)
VALUES('dawn', '2021');

INSERT INTO albums(name, cr_year)
VALUES('girls', '2007');
--
INSERT INTO compilations(name, comp_year)
VALUES('fav', '2018');

INSERT INTO compilations(name, comp_year)
VALUES('unfav', '2002');

INSERT INTO compilations(name, comp_year)
VALUES('the best', '2019');

INSERT INTO compilations(name, comp_year)
VALUES('better', '2020');

INSERT INTO compilations(name, comp_year)
VALUES('good', '2023');

INSERT INTO compilations(name, comp_year)
VALUES('succesful', '2010');

INSERT INTO compilations(name, comp_year)
VALUES('bad', '2015');

INSERT INTO compilations(name, comp_year)
VALUES('the worst', '2016');
--
INSERT INTO tracks(name, duration, album_id)
VALUES('first', '100', 1);

INSERT INTO tracks(name, duration, album_id)
VALUES('second', '200', 2);

INSERT INTO tracks(name, duration, album_id)
VALUES('third', '300', 3);

INSERT INTO tracks(name, duration, album_id)
VALUES('fourth', '400', 4);

INSERT INTO tracks(name, duration, album_id)
VALUES('fifth', '500', 5);

INSERT INTO tracks(name, duration, album_id)
VALUES('sixth', '15', 6);

INSERT INTO tracks(name, duration, album_id)
VALUES('seventh', '25', 7);

INSERT INTO tracks(name, duration, album_id)
VALUES('eighth', '35', 8);

INSERT INTO tracks(name, duration, album_id)
VALUES('nine', '60', 1);

INSERT INTO tracks(name, duration, album_id)
VALUES('ten', '120', 2);

INSERT INTO tracks(name, duration, album_id)
VALUES('eleven', '240', 3);

INSERT INTO tracks(name, duration, album_id)
VALUES('twelve', '300', 4);

INSERT INTO tracks(name, duration, album_id)
VALUES('go', '360', 5);

INSERT INTO tracks(name, duration, album_id)
VALUES('python', '239', 6);

INSERT INTO tracks(name, duration, album_id)
VALUES('java', '123', 7);
--
INSERT INTO track_compilation(track_id, compilation_id)
VALUES(1, 1);

INSERT INTO track_compilation(track_id, compilation_id)
VALUES(2, 2);

INSERT INTO track_compilation(track_id, compilation_id)
VALUES(3, 3);

INSERT INTO track_compilation(track_id, compilation_id)
VALUES(4, 4);

INSERT INTO track_compilation(track_id, compilation_id)
VALUES(5, 5);

INSERT INTO track_compilation(track_id, compilation_id)
VALUES(6, 6);

INSERT INTO track_compilation(track_id, compilation_id)
VALUES(7, 7);

INSERT INTO track_compilation(track_id, compilation_id)
VALUES(8, 8);

INSERT INTO track_compilation(track_id, compilation_id)
VALUES(9, 1);

INSERT INTO track_compilation(track_id, compilation_id)
VALUES(10, 1);

INSERT INTO track_compilation(track_id, compilation_id)
VALUES(11, 2);

INSERT INTO track_compilation(track_id, compilation_id)
VALUES(12, 3);

INSERT INTO track_compilation(track_id, compilation_id)
VALUES(13, 4);

INSERT INTO track_compilation(track_id, compilation_id)
VALUES(14, 5);

INSERT INTO track_compilation(track_id, compilation_id)
VALUES(15, 6);
--
INSERT INTO genre_performer(genre_id, performer_id)
VALUES(1, 1);

INSERT INTO genre_performer(genre_id, performer_id)
VALUES(2, 2);

INSERT INTO genre_performer(genre_id, performer_id)
VALUES(3, 3);

INSERT INTO genre_performer(genre_id, performer_id)
VALUES(4, 4);

INSERT INTO genre_performer(genre_id, performer_id)
VALUES(5, 5);

INSERT INTO genre_performer(genre_id, performer_id)
VALUES(1, 6);

INSERT INTO genre_performer(genre_id, performer_id)
VALUES(2, 7);

INSERT INTO genre_performer(genre_id, performer_id)
VALUES(3, 8);

INSERT INTO genre_performer(genre_id, performer_id)
VALUES(4, 1);
--
INSERT INTO performer_album(album_id, performer_id)
VALUES(1, 1);

INSERT INTO performer_album(album_id, performer_id)
VALUES(2, 2);

INSERT INTO performer_album(album_id, performer_id)
VALUES(3, 3);

INSERT INTO performer_album(album_id, performer_id)
VALUES(4, 4);

INSERT INTO performer_album(album_id, performer_id)
VALUES(5, 5);

INSERT INTO performer_album(album_id, performer_id)
VALUES(6, 6);

INSERT INTO performer_album(album_id, performer_id)
VALUES(7, 7);

INSERT INTO performer_album(album_id, performer_id)
VALUES(8, 8);


