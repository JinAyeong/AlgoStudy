select o.ANIMAL_ID, o.NAME
from animal_outs o
where not exists (
    select 1
    from animal_ins i
    where i.animal_id = o.animal_id
)
order by o.animal_id;