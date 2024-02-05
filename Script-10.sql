-- задание 2 домашняя работа 4 из модуля "Базы данных"

-- находим название и продолжительность самого длительного трека
select name, duration from track
where duration = (select max(duration) from track);

-- ищем трек длиной более 3 минут
select name, duration from track
where duration >= '3.5';

-- названия сборников, вышедших с период с 2018 по 2019 годы
select name, year_made from collection
where year_made between '2018' and '2020';

-- исполнитель, чьё имя состоит из одного слова 
-- работает, всё нормально
select name from musician
where name not like '% %';

-- Название треков, которые содержат слово "мой"
-- работает, всё хороршо
select name from track
where name like 'Мой%' or name like '%Мой';