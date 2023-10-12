select quest_id, answer, is_right
from answers
where quest_id = 1 and answer = '100' 
	or quest_id = 2 and answer = 'Атлантис'
	or quest_id = 3 and answer = 'Клавиатура'
	or quest_id = 4 and answer = 'Фото'
	or quest_id = 5 and answer = '1918'
	or quest_id = 6 and answer = 'Пало-Альто';
