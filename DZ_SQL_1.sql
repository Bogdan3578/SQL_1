CREATE TABLE IF NOT EXISTS genres(
id_genres SERIAL PRIMARY key,
name_genres VARCHAR(40) NOT NULL
);
CREATE TABLE IF NOT EXISTS performers(
id_performers SERIAL PRIMARY key,
name_performers VARCHAR(40) NOT NULL
);
CREATE TABLE IF NOT EXISTS album(
id_album SERIAL PRIMARY key,
name_album VARCHAR(40) NOT null,
year_album VARCHAR(4) NOT null
);
CREATE TABLE IF NOT EXISTS track(
id_track SERIAL PRIMARY key,
name_track VARCHAR(40) NOT null,
duration_track TIME NOT null,
id_album INTEGER NOT NULL references album(id_album)
);
CREATE TABLE IF NOT EXISTS broke_performers_album(
id_album INTEGER NOT NULL references album(id_album),
id_performers INTEGER NOT NULL references performers(id_performers)
);
CREATE TABLE IF NOT EXISTS collections(
id_collections SERIAL PRIMARY key,
name_collections VARCHAR(40) NOT null,
year_collections VARCHAR(4) NOT null,
id_track INTEGER NOT NULL references track(id_track),
if_album INTEGER NOT NULL references album(id_album)
);
CREATE TABLE IF NOT EXISTS broker_album_track(
id_almub INTEGER NOT NULL references album(id_album),
id_track INTEGER NOT NULL references track(id_track)
);