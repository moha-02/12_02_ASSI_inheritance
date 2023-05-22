# inheritance_postgresql
Small ecample and aplication of inheritance in postgresql

## OBJECTIVES🎯

- CREATE A DATABASE EXAMPLE
- SHOW A PRACTICAL APLLICATION

## TECHNOLOGIES 🛠

- PGADMIN4 (PostgreSQL) 🐘

## WHAT IS INHERITANCE IN  PostgreSQL❓

In programming inheritance refers to the ability of an object to take on one or more characteristics from other classes of objects. The characteristics inherited are usually instance variables or member functions. An object that inherits these characteristics is known as a subclass.
In PostgreSql it's no diferent, it allows the capacity of having child tables like in any other POO language.

## DATABASE EXAMPLE 📚

We created a small database example based on a shop.

### TABLE PERSON

This table has 2 child tables: the person in charge of an area and the employees. We can see how each child table can have its own atributtes in addition to the ones inherited.
~~~
SELECT * FROM persona;
~~~

<img width="322" alt="image" src="https://github.com/moha-02/inheritance_postgresql/assets/119495982/2291b9e2-5580-4e2e-9cdf-a1521dca89f4">

~~~
SELECT * FROM in_charge; 
~~~

<img width="438" alt="image" src="https://github.com/moha-02/inheritance_postgresql/assets/119495982/77204c75-3f81-401f-ae75-9b0e744e11e1">

~~~
SELECT * FROM employee;
~~~

<img width="445" alt="image" src="https://github.com/moha-02/inheritance_postgresql/assets/119495982/02096986-a694-4d6d-b792-c0d3f6186275">

### TABLE SALES

This table has 2 child tables with no attributes. The 2 child tables have diferent years, throught a trigger we save the sales filtering by the year, which allows storing the sales in diferent tables depending on the year making it easier to manage.

~~~
SELECT * FROM sales;
~~~

<img width="286" alt="image" src="https://github.com/moha-02/inheritance_postgresql/assets/119495982/56427222-6e13-409e-81a8-647e1d09cf73">

~~~
SELECT * FROM sales2022; 
~~~
<img width="286" alt="image" src="https://github.com/moha-02/inheritance_postgresql/assets/119495982/1a2d1764-097b-47a6-a848-581bf0324f99">

~~~
SELECT * FROM sales2023;
~~~
<img width="284" alt="image" src="https://github.com/moha-02/inheritance_postgresql/assets/119495982/733f92c0-e975-4935-a366-ff05551f73f3">

## INSTRUCTIONS 👷‍♂️

1. Create a database to store the example
2. Execute the sql script.
3. Its in order 
4. At the end of the script there are the querys to see th functionality od the database

## CONCLUSION 👨‍💻

Tos sump up, since postgrepsql is an POO language we can manage data throught the benefits of it. It allows handfull metods to actualize data in the future and to have it organised. Also allows us doing the same with the minimum script writing.


