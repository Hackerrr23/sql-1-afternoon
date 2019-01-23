CREATE TABLE Person (
 		person_id SERIAL, name VARCHAR(200), age INTEGER, height INTEGER, city VARCHAR(200), favorite_color VARCHAR(200)
  );
  INSERT INTO Person(name,age,height,city,favorite_color)
  VALUES('Yusef', 21, '510', 'Houston', 'yellow')
  VALUES('Mohamed', 21, '513', 'Kansas', 'blue')
  VALUES('Meveke', 21, '510', 'Austin', 'red')
  VALUES('Yusef', 21, '510', 'Houston', 'yellow')
  VALUES('Funcia', 22, '510', 'Dallas', 'white');

SELECT * FROM Person ORDER BY height DESC;
SELECT * FROM Person ORDER BY height ASC;
SELECT * FROM Person order by age desc;
select * from Person where age > 20;
select * from Person where age  = 18;
select * from Person where age < 20 or age > 30;
select * from Person where age != 27;
select * from Person where favorite_color != "red";
select * from Person where favorite_color != "red" and favorite_color != "blue";
select * from Person where favorite_color = 'orange' or "green";
select * from Person where favorite_color in ("orange", "green", "blue");
select * from Person where favorite_color in ("yellow", "purple");

orders: 
    INSERT INTO orders(
    product_name,product_price,quantity
    )
    values('jordans',200,3),('kobes',212,1);
   
   select * from orders;
  SELECT SUM(quantity) FROM orders;
  select sum(product_price * quantity) from orders;
  select sum(quantity * product_price) from orders;

  artist: 
    insert into artist (name) values('Eminem'), ('Rihanna'), ('kanye');
select * from artist order by name desc limit 10;
select * from artist order by name limit 5;
select * from artist where name LIKE 'Black%';
select * from artist where name LIKE '%Black%';

  employee
select first_name, last_name from employee where city = 'Calgary';
select min(birth_date) from employee;
select max(birth_date) from employee;
SELECT * FROM employee WHERE reports_to = 2

select count(*) from employee where city = 'Lethbridge';

invoice: 
        select count(*) from invoice where billing_country = 'USA';
select max(total) from invoice;
select min(total) from invoice;
select * from invoice where total < 5;
select count(*) from invoice where billing_state in ('CA','TX', 'AZ');
