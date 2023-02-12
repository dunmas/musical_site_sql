CREATE TABLE IF NOT EXISTS genres (
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS performers (
	performer_id SERIAL PRIMARY KEY,
	alias VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS albums (
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL UNIQUE,
	cr_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_performer (
	genre_id INTEGER REFERENCES genres(genre_id),
	performer_id INTEGER REFERENCES performers(performer_id),
	CONSTRAINT gen_per_id PRIMARY KEY (genre_id, performer_id)
);

CREATE TABLE IF NOT EXISTS performer_album (
	album_id INTEGER REFERENCES albums(album_id),
	performer_id INTEGER REFERENCES performers(performer_id),
	CONSTRAINT per_alb_id PRIMARY KEY (album_id, performer_id)
);

CREATE TABLE IF NOT EXISTS tracks ( 
	track_id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER NOT NULL REFERENCES albums(album_id)
);

CREATE TABLE IF NOT EXISTS compilations ( 
	compilation_id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL UNIQUE,
	comp_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS track_compilation ( 
	tr_comp_id SERIAL PRIMARY KEY,
	track_id INTEGER REFERENCES tracks(track_id),
	compilation_id INTEGER REFERENCES compilations(compilation_id)
)

