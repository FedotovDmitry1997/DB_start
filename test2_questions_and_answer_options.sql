select q.id, q.quest_text, ans.answer
from questions q left join answers ans
on q.id = ans.quest_id
order by q.id;