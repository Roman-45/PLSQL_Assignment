select f_name,product_name,emp_name as delivery_guy from
customer c inner join orders ord on c.c_id=ord.c_id
inner join employee p on p.o_id = ord.o_id;

UPDATE customer SET f_name = 'Abhijit' WHERE c_id = '2';

SAVEPOINT A;





SELECT * FROM customer;
rollback to A;

select emp_name from employee group by salary >(select avg(salary) from employee);