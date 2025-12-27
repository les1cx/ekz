select 
d.фио as врач,
d.специальность,
count(distinct o.id_больного)
as количество_больных
from Врачи d
left join Осмотры o on d.ID = o.id_Врача
group by
d.ID,
d.ФИО,
d.Специальность
order by количество_больных desc;