USE cookbookdb;

select * from emp 
where DEPTNO = 10
	or comm is not null
    or sal <=2000 and deptno=20;