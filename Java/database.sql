-- шаблон бызы данных

drop database if exists pet_farm;
create database pet_farm;
use pet_farm;

create table pet_list (
    Id int not null AUTO_INCREMENT, PRIMARY KEY(Id),
    PetName varchar(50),
    GenusId varchar(50),
    Birthday date
);

create table pet_types (
    Id int not null AUTO_INCREMENT, PRIMARY KEY(Id),
    Genus_name varchar(50)
);
insert into
    pet_types(id, Genus_name)
values
    (1, 'Cat'),
    (2, 'Dog'),
    (3, 'Hamster');

create table pet_command (
    PetId int,
    CommandId int
);


create table Genus_command (
    CommandId  int,
    GenusID int
);
insert into
    Genus_command(CommandId, GenusId)
values
    (1, 2),
    (2, 2),
    (3, 1),
    (4, 3);

create table commands(
    Id int not null AUTO_INCREMENT, PRIMARY KEY(Id),
    Command_name varchar(50)
);
insert into
    commands(Id, Command_name)
values
    (1, 'Сидеть'),
    (2, 'Стоять'),
    (3, 'Мяукать'),
    (4, 'Жрать');
