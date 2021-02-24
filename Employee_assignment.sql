create table employee.Dept(
    deptno int not null primary key,
    dname varchar(20) not null,
    location varchar(30) not null);
    
     Create table employee.Emp(
     empno int not null primary key,
     ename varchar(20) not null,
     job varchar(20) not null,
     mgr int,
     hireDate date,
	 sal decimal(10,2),
     comm decimal(10,2),
     deptno int not null,
     foreign key(deptno) references Dept(deptno));
     
     desc employee.Emp;
     desc employee.dept;
     
     insert into employee.Dept values (10,'accounting','newyork'),
     (20,'research','dallas'),
     (30,'sales','chicago'),
     (40,'operation','baston'),
     (50,'production','India'),
     (60,'marketing','banglore'),
     (70,'finance','mumbai');
     
     select*from employee.Dept;
     
insert into employee.emp(
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
    
)VALUES(
  7000,'Jhon','manager', 7698, '2021-06-18', 2500,Null,50
),
(
  7002,'Sham','manager',7698,'2020-06-18',2500,null,50
),
(
  7004,'Ravi','Clerk',7782, '2020-12-12',500,null,50
),
(
  7069, 'Smith','clerk',7902,'1993-06-13',800,0,20
),
(
  7499,'Allen','Salesman',7689,'1998-08-15', 1600,300,30
);

SELECT * from employee.emp ;

insert into employee.emp(
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
    
)VALUES(
  7521,'Ward','salesman', 7698, '1996-03-26', 1250, 500, 30
),
(
  7566,'Jones','manager',7839,'1995-10-31',2975,null,20
),
(
  7654,'Martin','Salesman',7698, '1998-12-05',1250,1400,30
),
(
  7698, 'Blake','Manager',7839,'1992-06-11',2850,0,30
),
(
  7782,'Clark','Manager',7839,'1993-05-14', 2450,null,10
),
(
  7788,'Scott','Analyst',7566,'1996-03-05',3000,null,20
),
(
  7839,'King','President',null,'1990-06-09',5000,0,10
),
(
  7844,'Turner','Salesman',7698,'1995-06-04',1500,0,30
),
(
  7876,'Adams','Clerk',7788,'1999-06-04',1100,null,20
),
(
  7900,'James','Clerk',7698,'2000-06-23',950,null,30
),
(
  7920,'Ford', 'Analyst', 7566, '1997-12-05',3000,null,20
),
(
  7934,'Miller','Clerk',7782,'2000-01-21',1300,null,10
);

select * from employee.emp
where sal>=1000 AND sal<3000;

select * from employee.emp
where sal>=1000 OR sal<3000;

select * from employee.emp
where sal!=3000;

select * from employee.emp
where sal<> 3000;

select * from employee.emp
where deptno IN(10,20,30);

select * from employee.emp
where job like '__E%';

select * from employee.emp
where ename like '%l%l%';

select * from employee.emp
where ename like '_l%';

select * from employee.emp
where ename like's%';

select * from employee.emp
where ename like '%e_';

select * from employee.emp
where ename like '-----';

select * from employee.emp
where sal between 2000 AND 3000;

select * from employee.emp
where sal between 7000 AND 7500;

desc employee.emp;

select ename, empno from employee.emp;

select * from employee.emp
where mgr is null;

select * from employee.emp
where job='salseman' and deptno=30;

select * from employee.emp
where job = 'Salesman' and deptno=30;

select * from employee.emp
where job = 'Salesman' and deptno=30 and sal>1500;

select * from employee.emp
where ename like '%s' or ename like 'a%';

select * from employee.emp 
where not deptno=20;

select max(sal), min(sal), sum(sal), avg(sal), count(*) from employee.emp;

select count(comm) from employee.emp;

select count(empno) from employee.emp where deptno=30;

select sum(sal) from employee.emp where deptno=30;

select count(*), sum(sal), avg(sal) from employee.emp where deptno=30;

select max(sal), min(sal) from employee.emp where job='Salesman';

select deptno, sum(sal) from employee.emp group by deptno;
