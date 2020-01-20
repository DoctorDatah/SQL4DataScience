USE cookbookdb;

Select ename,  sal,
	case when comm = 0 then "No Compansation"
		 when comm is null then "not specified"
         else "Have commensation"
         end as CompensationStatus
from emp;    

Select ename,  sal,
	case when sal = 0 then "No Compansation"
		 when sal is Null then "not specified"
         else "Have commensation"
         end as CompensationStatus
from emp  ;


# Selecting Random numbers
select * from emp 
order by rand() limit 10;


# Transforming nulls into real values
select coalesce(comm, 0)
from emp;