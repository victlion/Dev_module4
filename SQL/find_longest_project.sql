select 
	id,
	EXTRACT(MONTH FROM age(finish_date, start_date)) as MONTH_COUNT 
from 
	project
where
	(EXTRACT(MONTH FROM age(finish_date, start_date))) = (SELECT MAX(EXTRACT(MONTH FROM age(finish_date, start_date))) FROM project)