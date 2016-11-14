drop table if exists person;

create table Person (
  Id INTEGER PRIMARY KEY AUTOINCREMENT,
  Name varchar(30),
  Age INTEGER ,
  Height INTEGER,
  City varchar(40),
  FavoriteColor varchar(20)
);

insert into Person
(Name, Age, Height, City, FavoriteColor)
values ("Austin", 30, 5.5, "Provo, UT", "green");

insert into Person
(Name, Age, Height, City, FavoriteColor)
values ("Coy", 27, 5.8, "Puyallup, WA", "green");

insert into Person
(Name, Age, Height, City, FavoriteColor)
values ("Emily", 25, 4.8, "Spanaway, WA", "cheetah print");

insert into Person
(Name, Age, Height, City, FavoriteColor)
values ("Nellie Kate", 22, 5.55, "Rexburg, ID", "pink");

insert into Person
(Name, Age, Height, City, FavoriteColor)
values ("Mckenzie", 18, 5.55, "Pullman, WA", "red");


select * from person order by height desc;

select * from person order by age desc;

select * from person where age > 20;

select * from person where age = 18;

select * from person where age not between 20 and 30;

select * from person where age != 27;

select * from person where FavoriteColor != "red";

select * from person
where FavoriteColor not in ("red", "blue");

select * from person
where FavoriteColor in ("orange", "green");

select * from person
where FavoriteColor in ("orange", "green blue");

select * from person
where FavoriteColor in ("yellow", "purple");

create table Orders (
  Id INTEGER PRIMARY KEY AUTOINCREMENT,
  productName varchar(50),
  productPrice money,
  Quantity integer,
  personId integer references Person
);

insert into Orders
(productName, productPrice, Quantity, personId)
values ("Harry Potter", 50.00, 1, 1);

insert into Orders
(productName, productPrice, Quantity, personId)
values ("sofa", 225.25, 2, 2);

insert into Orders
(productName, productPrice, Quantity, personId)
values ("orange juice", 1.95, 3, 5);

insert into Orders
(productName, productPrice, Quantity, personId)
values ("iphone5", 675.00, 1, 4);

insert into Orders
(productName, productPrice, Quantity, personId)
values ("pretzels", 1, 25, 3);

select * from orders;

select sum(quantity) from orders;

select sum(productPrice) from orders;

insert into Artist (Name)
values ("Austin Hollenbaugh");

insert into Artist (Name)
values ("Coy Hollenbaugh");

insert into Artist (Name)
values ("Emily Hollenbaugh");

select * from artist limit 10;

select * from artist where artistid < 11 order by Name desc;

select * from artist where artistid < 6 order by Name asc;

select * from artist where name like "Black%";

select * from artist where name like "%Black%";

insert into Employee
(LastName, FirstName, Title, ReportsTo, BirthDate,
 HireDate, Address, City, State, Country, PostalCode,
 Phone, Fax, Email)
values ("Hollenbaugh", "Austin", "CEO", null, 1962-02-18, 1962-02-18, "130 S 400 E", "Provo", "UT", "United States", 84606, "253.431.3212", "253.431.3212", "austinhollenbaugh@gmail.com");

insert into Employee
(LastName, FirstName, Title, ReportsTo, BirthDate,
 HireDate, Address, City, State, Country, PostalCode,
 Phone, Fax, Email)
values ("Hollenbaugh", "Coy", "Manager", 1, 1962-02-18, 1962-02-18, "130 S 400 E", "Provo", "UT", "United States", 84606, "253.431.3212", "253.431.3212", "austinhollenbaugh@gmail.com");

select firstName, lastName, city from Employee where city like "Calgary";

select firstName, lastName, Birthdate from employee order by birthdate desc limit 1;

select firstName, lastName, Birthdate from employee order by birthdate asc limit 1;

select * from employee where reportsto = 2;

select count(*) from employee where city like "lethbridge";

select count(*) from invoice where billingcountry like "USA";

select max(total) from invoice;

select min(total) from invoice;

select * from invoice where total > 5;

select count(*) from invoice where total < 5;

select count(*) from invoice where billingstate in ("CA", "AZ", "TX");

select avg(total) from invoice;

select sum(total) from invoice; 
