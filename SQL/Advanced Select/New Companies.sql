select c.company_code,c.founder,count(distinct lm.lead_manager_code) as lm_count, count(distinct sm.senior_manager_code) as sm_count , count(distinct m.manager_code) as m_count, count(distinct e.employee_code) as e_count
from company c 
join Lead_Manager lm 
on c.company_code = lm.company_code 
join Senior_Manager sm
on c.company_code = sm.company_code
join Manager m
on c.company_code = m.company_code
join Employee e
on c.company_code = e.company_code
group by company_code, c.founder;
order by c.company_code ASC;
