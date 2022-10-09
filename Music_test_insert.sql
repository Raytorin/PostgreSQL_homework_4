INSERT INTO genre 
VALUES
(1, 'rock'),
(2, 'dance'),
(3, 'indie-pop'),
(4, 'R&B'),
(5, 'EDM');

INSERT INTO artist 
VALUES
(1, 'Imagine Dragons'),
(2, 'Capital Cities'),
(3, 'Tiesto'),
(4, 'David Guetta'),
(5, 'Avicii'),
(6, 'Black Eyed Peas'),
(7, 'The Weeknd'),
(8, 'Ed Sheeran'),
(9, 'AC/DC');

INSERT INTO genre_artist
VALUES
(1, 1),
(2, 2),
(2, 5),
(3, 2),
(4, 7),
(5, 3),
(5, 4),
(5, 6),
(5, 8),
(1, 9);


INSERT INTO album
VALUES 
(1, 'Bones', '2022-06-09'),
(2, 'In a Tidal Wawe Of Mystery', '2013-09-09'),
(3, 'The Motto', '2021-07-10'),
(4, 'Listen Again', '2015-04-09'),
(5, 'True', '2013-10-09'),
(6, 'Monkey Business', '2005-09-01'),
(7, 'The Highlights', '2021-10-15'),
(8, '=', '2021-01-01'),
(9, 'Yes\No', '2018-12-01'),
(10, 'Test 2020', '2020-06-12');

INSERT INTO artist_album 
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 10);

INSERT INTO tracks(track_name, track_duraction, album_id)  
VALUES
('Bad Habits', '03:50:00', 8),
('Bones', '02:45:00', 1),
('Save And Sound', '3:12:00', 2),
('The Motto', '02:44:00', 3),
('Dangerous', '03:23:00', 4),
('Lovers on the Sun', '03:23:00', 4),
('Wake Me Up', '04:06:00', 5),
('You Make Me', '03:51:00', 5),
('Addicted to You', '02:28:00', 5),
('Pump It', '03:33:00', 6),
('My Humps', '05:26:00', 6),
('Save Your Tears', '03:35:00', 7),
('Blinding Lights', '03:20:00', 7),
('Starboy', '03:50:00', 7),
('The Hills', '04:02:00', 7)
('Bad bits', '05:50:00', 10);

INSERT INTO compilation(compilation_name, compilation_year)
VALUES
('David Guetta comp', '2020-01-01'),
('The Weeknd comp', '2022-01-01'),
('Black Eyed Peas', '2010-01-01'),
('Best of 5', '2021-01-01'),
('For gaming', '2022-01-01'),
('Best of 3', '2018-01-01'),
('Dance-EDM comp', '2022-01-01'),
('Movie music', '2021-01-01');

INSERT INTO tracks_compilation 
VALUES
(1, 5),
(1, 7),
(2, 5),
(3, 6),
(3, 7),
(4, 4),
(4, 5),
(4, 7),
(5, 1),
(5, 6),
(5, 7),
(6, 1),
(6, 6),
(6, 7),
(7, 4),
(8, 5),
(8, 7),
(9, 7),
(10, 3),
(10, 5),
(11, 3),
(12, 2),
(12, 7),
(13, 3),
(14, 3),
(14, 7),
(14, 8),
(15, 3),
(15, 7)
(16, 10);



