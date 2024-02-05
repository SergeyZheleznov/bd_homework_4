-- задание 1 домашняя работа 4 из модуля "Базы данных"

-- insert-запросы

-- заполняю жанры, это блюз, поп-мазыка и романс
insert into genre(name)
values('блюз');

insert into genre(name)
values('поп-музыка');

insert into genre(name)
values('романс');

-- заполняю позиции исполнителей
insert into musician(name)
values('Кирилл Комаров');

insert into musician(name)
values('Сергей Воронов');

insert into musician(name)
values('Алексей Назаров');

insert into musician(name)
values('Роман');

-- заполняем таблицу с альбомами, всего 3 альбома

insert into album(name, year_made)
values('Делай своё дело', 2019);

insert into album(name, year_made)
values('Глава 25', 2010);

insert into album(name, year_made)
values('Легенда', 2016);

-- заполняю таблицу треки, всего 6 треков
insert into track(album_id, name, duration)
values('1', 'Мой друг', 3.55);

insert into track(album_id, name, duration)
values(1, 'Скорый поезд', 3.05);

insert into track(album_id, name, duration)
values(2, 'Макияж', 2.48);

insert into track(album_id, name, duration)
values(2, 'Лагуна', 3.15);

insert into track(album_id, name, duration)
values(3, 'Шауляй', 2.50);

insert into track(album_id, name, duration)
values(3, 'Волня', 2.57);

-- заполняю таблицу сборники,всего 4 сборника

insert into collection(name, year_made)
values('Волнение', 2019);

insert into collection(name, year_made)
values('Природа', 2022);

insert into collection(name, year_made)
values('Романтика', 2023);

insert into collection(name, year_made)
values('Все здесь', 2023);

-- заполняем таблицу, в которой указано, какой музыкант в каом жанре работает
insert into genremusician(genre_id, musician_id)
values(1,1);

insert into genremusician(genre_id, musician_id)
values(1,2);

insert into genremusician(genre_id, musician_id)
values(2,3);

insert into genremusician(genre_id, musician_id)
values(3,4);

-- заполняем таблицу соответствия альбомов и исполнителей
insert into albummusician(album_id, musician_id)
values(1,1);

insert into albummusician(album_id, musician_id)
values(2,2);

insert into albummusician(album_id, musician_id)
values(3,3);

-- заполняем таблицу соответствия коллекций и треков
insert into collectiontrack(collection_id, track_id)
values(1,1);

insert into collectiontrack(collection_id, track_id)
values(2,1);

insert into collectiontrack(collection_id, track_id)
values(1,2);

insert into collectiontrack(collection_id, track_id)
values(2,2);

insert into collectiontrack(collection_id, track_id)
values(2,3);

insert into collectiontrack(collection_id, track_id)
values(3,3);

insert into collectiontrack(collection_id, track_id)
values(3,4);

insert into collectiontrack(collection_id, track_id)
values(4,4);

insert into collectiontrack(collection_id, track_id)
values(4,5);

insert into collectiontrack(collection_id, track_id)
values(4,6);









