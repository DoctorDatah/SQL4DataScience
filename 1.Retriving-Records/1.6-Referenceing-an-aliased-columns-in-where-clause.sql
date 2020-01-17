USE cookbookdb;

## Problem

/*
select sal as salary, COMM as commision
from emp
where salary < 5000;
*/

-- This Gives Error 
--  we cannot use alis directly in where clasuse 

# Solution 1
-- We can avoid using alias in where clause

# Solution 2
-- Put the where clasue ouside of the inner query
select * from 
(select sal as salary, comm as commission
from emp) as tbl
where salary < 5000;

#  Note: 
-- This solution would be needed in 
	# Aggreagate Functions 
    # Scalar Subquries 
    # Windowing Functions 
    # Alias
    
    
# Why we need to Do that?

-- Because the where clause is executed first.
-- And at that time select in not executed and columns are not aliased
-- So we put the select inner query so that it get executed first
-- Then we can use another select from that to use alias