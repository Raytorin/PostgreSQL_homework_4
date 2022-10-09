CREATE TABLE IF NOT EXISTS genre 
(
	genre_id int PRIMARY KEY,
	title_name text NOT NULL
);

CREATE TABLE IF NOT EXISTS artist
(
	artist_id int PRIMARY KEY,
	artist_name text NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_artist
(
	genre_id int REFERENCES genre(genre_id),
	artist_id int REFERENCES artist(artist_id)
);

CREATE TABLE IF NOT EXISTS album
(
	album_id int PRIMARY KEY,
	album_name VARCHAR(50) NOT NULL,
	album_year date
);

CREATE TABLE IF NOT EXISTS artist_album
(
	artist_id int REFERENCES artist(artist_id),
	album_id int REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS tracks
(
	track_id SERIAL PRIMARY KEY,
	track_name VARCHAR(80) NOT NULL,
	track_duraction TIME NOT NULL,
	album_id int REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS compilation 
(
	compilation_id SERIAL PRIMARY KEY,
	compilation_name VARCHAR(90),
	compilation_year date
);

CREATE TABLE IF NOT EXISTS tracks_compilation
(
	tracks_id int REFERENCES tracks(track_id),
	compilation_id int REFERENCES compilation(compilation_id)
);
