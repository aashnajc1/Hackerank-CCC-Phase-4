select  a.company_code company_code , a.founder founder 
        , count(distinct(b.lead_manager_code)) lead_manager
        , count(distinct(c.senior_manager_code)) senior_manager
        , count(distinct(d.manager_code)) manager
        , count(distinct(e.employee_code)) employee  
from company a, lead_manager b , senior_manager c, manager d, employee e
where a.company_code = b.company_code
and b.lead_manager_code = c.lead_manager_code 
and c.senior_manager_code = d.senior_manager_code
and d.manager_code = e.manager_code 
group by a.company_code, a.founder
order by a.company_code;
