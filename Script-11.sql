-- задание 3 домашняя работа 4 из модуля "Базы данных"

-- находим количество исполнителей в каждом жанре
-- для начала просто количество исполнетелей
-- работает, сделал
select genre_id, count(*) from genremusician
group by genre_id
order by count(*) desc;

-- названия сборников, вывшедших в период с 2018 по 2020 годы
-- работает, сделал
select name, year_made from collection
where (year_made between '2018' and '2020');

-- средняя продолжительность треков по каждому альбому.
-- работает, сделал
select album_id, avg(duration)from track
group by album_id;

-- все исполнители, которые не выпустили альбомы в 2020 году

select * from musician
where exists(select name from album where year_made != 2020);

-- названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
