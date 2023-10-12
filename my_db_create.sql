create table if not exists public.questions (
	id integer not null generated always as identity,
	quest_text text not null,
	constraint questions_pk primary key (id)
);
create table if not exists public.answers (
	id integer not null generated always as identity,
	answer text not null,
	quest_id integer not null,
	is_right boolean not null,
	constraint answer_pk primary key (id),
	constraint answer_fk foreign key (quest_id) references public.questions(id) 
);

insert into questions (quest_text) values
('Какова примерная дульная скорость пистолетных выстрелов?'),
('Что из перечисленного является известным космическим кораблем?'),
('Где можно найти алфавитную последовательность QWERTY?'),
('С чем вы работаете, если Вы используете компьютерные программы, такие как Ableton, Live, Nuendo или Pro Tools?'),
('Когда была основана компания Panasonic?'),
('Где расположена штаб-квартира компании Hewlett-Packard?');

insert into answers (answer, quest_id, is_right) values
('400', 1, true),
('100', 1, false),
('1000', 1, false),
('Атлантис', 2, true),
('Iphone', 2, false),
('Asus', 2, false),
('Cessna', 2, false),
('Клавиатура', 3, true),
('Рояль', 3, false),
('Музыка', 4, true),
('Видео', 4, false),
('Фото', 4, false),
('1918', 5, true),
('1930', 5, false),
('1940', 5, false),
('1950', 5, false),
('1920', 5, false),
('Пало-Альто', 6, true),
('Москва', 6, false),
('Лос-Анжелес', 6, false);
