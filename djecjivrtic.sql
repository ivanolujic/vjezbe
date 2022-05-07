# djecji vrtic
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\vjezbe\djecjivrtic.sql

drop database if exists djecjivrtic;
create database djecjivrtic;
use djecjivrtic;

create table osoba(
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    godiste varchar(50)
);

create table odgojiteljica(
    iban varchar(50),
    email varchar(50),
    osoba varchar(50)
);

create table dijete(
    osoba varchar(50),
    roditelj varchar(50)
);

create table skupina(
    naziv varchar(50),
    odgojiteljica varchar(50),
    maximumdjece varchar(50)
);