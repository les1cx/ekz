select top 3
b.фио as больной,
b.адрес,
b.дата_рождения,
count(o.id) as количество_посещений
from Больные b
inner join Осмотры o on b.id = o.id_больного
group by
b.id,
b.ФИО,
b.адрес,
b.дата_рождения
order by количество_посещений desc;