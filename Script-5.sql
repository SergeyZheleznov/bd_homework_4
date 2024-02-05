-- скрипт к домашнему заданию 2 модуль Базы данных, дата 19.01.2024
-- создаём сущность жанр 
create table if not exists genre(
	id serial primary key,
	name VARCHAR(60) not null
);

-- создаём сущность - исполнитель 
create table if not exists musician(
	id serial primary key,
	name VARCHAR(60) not null
);

-- создаём промежуточную таблицу жарн-исполнитель
-- связываем таблицу с жанром и исполнителем
create table if not exists genreMusician(
	genre_id integer references genre(id),
	musician_id integer references musician(id),
	constraint pk primary key(genre_id, musician_id)
);

--создаём сущность альбом 
-- и связываем альбом с жанром
create table if not exists album (
	id serial primary key,
	name VARCHAR(60) not null,
	year_made VARCHAR(60) not null
);

-- создаём сущность трек, это песня, у неё есть 
-- название и длина, она входит в альбом
create table if not exists track (
	id serial primary key,
	album_id integer references album(id),
	name VARCHAR(60) not null,
	duration VARCHAR(60) not null
	
); 

-- создаём промежуточную таблицу альбом-исполнитель
-- связываем таблицу с жанром и исполнителем
create table if not exists albumMusician(
	album_id integer references album(id),
	musician_id integer references musician(id),
	constraint am primary key(album_id, musician_id)
);

-- создаём сущность коллекция 
-- это сборник треков из разных альбомов 
create table if not exists collection(
	id serial primary key,
	name VARCHAR(60) not null,
	year_made VARCHAR(60) not null	
);

-- создаём промежуточную таблицу сборник-трек
-- связываем таблицу с жанром и исполнителем
create table if not exists collectionTrack(
	collection_id integer references collection(id),
	track_id integer references track(id),
	constraint ct primary key(collection_id, track_id)
);
