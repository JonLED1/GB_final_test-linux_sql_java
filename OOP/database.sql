DROP DATABASE IF EXISTS HumanFriends;

CREATE DATABASE IF NOT EXISTS HumanFriends;

USE HumanFriends;

create table Pets (
    id int,
    name varchar(50),
    type varchar(50),
    birthday date,
    commands varchar(50)
);

create table Pack_animals (
    id int,
    name varchar(50),
    type varchar(50),
    birthday date,
    commands varchar(50)
);

insert into
    Pets(id, name, type, birthday, commands)
values
    (1, 'Fido',	'Dog', '2020-01-01', 'Sit, Stay, Fetch'),
    (2, 'Whiskers',	'Cat',	'2019-05-15', 'Sit, Pounce'),
    (3, 'Hammy', 'Hamster',	'2021-03-10', 'Roll, Hide'),
    (4, 'Buddy', 'Dog',	'2018-12-10', 'Sit, Paw, Bark'),
    (5, 'Smudge', 'Cat', '2020-02-20', 'Sit, Pounce, Scratch'),
    (6, 'Peanut', 'Hamster', '2021-08-01', 'Roll, Spi'),
    (7, 'Bella', 'Dog', '2019-11-11', 'Sit, Stay, Roll'),
    (8, 'Oliver', 'Cat', '2020-06-30', 'Meow, Scratch, Jump');

insert into
    Pack_animals(id, name, type, birthday, commands)
values
    (1, 'Thunder', 'Horse', '2015-07-21', 'Trot, Canter, Gallop'),
    (2, 'Sandy', 'Camel', '2016-11-03', 'Walk, Carry Load'),
    (3, 'Eeyore', 'Donkey', '2017-09-18', 'Walk, Carry Load, Bray'),
    (4, 'Storm', 'Horse', '2014-05-05', 'Trot, Canter'),
    (5, 'Dune',	'Camel', '2018-12-12', 'Walk, Sit'),
    (6, 'Burro', 'Donkey', '2019-01-23', 'Walk, Bray, Kick'),
    (7, 'Blaze', 'Horse', '2016-02-29', 'Trot, Jump, Gallop'),
    (8, 'Sahara', 'Camel', '2015-08-14', 'Walk, Run');

delete from Pack_animals where type='Camel';
select * from Pack_animals;

create table young_animals
 (id int not null AUTO_INCREMENT,
  name varchar(50) not null DEFAULT '',
   age int not null DEFAULT 0,
   PRIMARY KEY(id));

alter table Pets add column age int after birthday;
UPDATE Pets SET age = (TIMESTAMPDIFF(MONTH, birthday, CURDATE()));

select name, age from Pets where age >= 12 and age <=36;

alter table Pack_animals add column age int after birthday;
UPDATE Pack_animals SET age = (TIMESTAMPDIFF(MONTH, birthday, CURDATE()));

insert into young_animals (name, age) select name, age from Pets where(age>=12 and age<=36);
insert into young_animals (name, age) select name, age from Pack_animals where(age>=12 and age<=36);
select * from young_animals;

create table animals(id int, name varchar(50), type varchar(50), birthday date, commands varchar(50));
insert into animals (id, name, type, birthday, commands) select id, name, type, birthday, commands from Pets;
insert into animals (id, name, type, birthday, commands) select id, name, type, birthday, commands from Pack_animals;
insert into animals (id, name) select id, name from young_animals;

select * from animals;