create database cinema;
#use cinema;

CREATE TABLE cartoons (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    duration INT,
    year_of_release INT
);

INSERT INTO cartoons (id, name, duration, year_of_release) VALUES
(1, 'Tom and Jerry', 30, 1940),
(2, 'Looney Tunes', 20, 1930),
(3, 'SpongeBob SquarePants', 15, 1999);

INSERT INTO cartoons (id, name, duration, year_of_release) VALUES
(4, 'Cars', 30, 2006), (5, 'Tinkerbell', 50, 2018);

update cartoons set duration= 50 where id= 1;

select * from cartoons;


CREATE TABLE sci_fi_films (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    duration INT,
    year_of_release INT
);

INSERT INTO sci_fi_films (id, name, duration, year_of_release) VALUES
(1, 'Star Wars', 120, 1977),
(2, 'The Matrix', 136, 1999);


CREATE TABLE action_films (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    duration INT,
    year_of_release INT
);

INSERT INTO action_films (id, name, duration, year_of_release) VALUES
(1, 'Die Hard', 131, 1988),
(2, 'Mission: Impossible', 147, 1996);


CREATE TABLE horror (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    duration INT,
    year_of_release INT
);

INSERT INTO horror (id, name, duration, year_of_release) VALUES
(1, 'The Shining', 144, 1980),
(2, 'Get Out', 104, 2017);


CREATE TABLE love (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    duration INT,
    year_of_release INT
);

INSERT INTO love (id, name, duration, year_of_release) VALUES
(1, 'Titanic', 194, 1997),
(2, 'The Notebook', 123, 2004);


-- Afisare un numar limitat de coloane----------------------------
select * from cartoons limit 3;

-- Afisare diferita a numelui, FARA a modifica structura tabelului, ca un read-mode----------------------------
select id as "ID", name as "NAME" from cartoons;
select * from cartoons;

-- Afisare in ordine alfabetica----------------------------
select * from cartoons order by name;
select * from cartoons order by name desc;

select * from cartoons where year_of_release < 2000;
select * from cartoons where name like '%a%';


INSERT INTO cartoons (id, name, duration, year_of_release) VALUES
(6, 'Tom and Je%ry', 50, 1940);
select name from cartoons where name like '%!%%' escape '!';
/* In this query, we use the LIKE operator with the % sign in the pattern '!%%'. 
The ! character is used as the escape character, which means that any % sign preceded by 
! will be treated as a literal % character instead of a wildcard(caracter special).
*/
# ! = transforma in string

select avg(year_of_release) from cartoons;

select * from cartoons;
select * from horror;

SELECT *
FROM cartoons
INNER JOIN horror ON cartoons.id = horror.id;
produse
select * from cartoons left join horror on cartoons.id = horror.id where horror.id is null;
select * from cartoons left join horror on cartoons.id = horror.id;