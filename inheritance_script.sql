--- CREATING THE PARENT TABLES AND THEIR CHILDS TABLES OF THE TYP OF POSITION IN THE SHOP

CREATE TABLE persona (
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    edad INT
);

CREATE TABLE in_charge (
    area VARCHAR(50)
) inherits (persona);

CREATE TABLE employee (
    position VARCHAR(100)
) inherits (persona);

--------------------------------------------------------------------------------------------

--- CREATING THE PARENT TABLE AMOUNT OF SALES AND THE CHILD TABLES OF EACH YEAR SALES
CREATE TABLE sales (
    period date,
	product varchar(100),
	cuantity int
);

CREATE TABLE sales2022 (
) inherits (sales);

CREATE TABLE sales2023 (
) inherits (sales);

--------------------------------------------------------------------------------------------

-- TRIGGER AND IT'S FUNCTION TO SEPARATE DEPENDING THE INSERTS DEPENDING ON THE YEAR 
CREATE FUNCTION salestrigger() RETURNS TRIGGER AS 
$$
BEGIN 
	IF ( date_part('year',NEW.period) = 2022) THEN
	INSERT INTO sales2022 VALUES (NEW.*);
	
	ELSEIF ( date_part('year',NEW.period) = 2023) THEN
	INSERT INTO sales2023 VALUES (NEW.*);
	
	END IF;
	RETURN NULL;
	
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trig_sales BEFORE INSERT ON sales FOR EACH ROW EXECUTE FUNCTION salestrigger();

--------------------------------------------------------------------------------------------

-- INSERT VELUES EXAMPLE TO SEE THE FUNCTIONALITY

insert into in_charge values ('Moha','Salhi',20,'stocker');
insert into employee values ('Fabian','Ossai',23,'sneakers');
insert into sales values ('2022-01-01','sneakers',10);
insert into sales values ('2023-03-03','trousers',15);

--------------------------------------------------------------------------------------------
-- QUERYS TO SHOW THE RESULTS AND HOW THEY GET STORED

SELECT * FROM persona;
SELECT * FROM in_charge; 
SELECT * FROM employee;

SELECT * FROM sales;
SELECT * FROM sales2022; 
SELECT * FROM sales2023;


