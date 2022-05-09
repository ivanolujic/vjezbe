# djecji vrtic
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\vjezbe\djecjivrtic.sql

drop database if exists djecjivrtic;
create database djecjivrtic;
use djecjivrtic;

create table osoba(
    sifra int not null primary key auto_increment
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    godiste varchar(50)
);

create table odgojiteljica(
    sifra int not null primary key auto_increment
    iban varchar(50),
    email varchar(50),
    osoba varchar(50)
);

create table dijete(
    sifra int not null primary key auto_increment
    osoba varchar(50),
    roditelj varchar(50)
);

create table skupina(
    sifra int not null primary key auto_increment
    naziv varchar(50),
    odgojiteljica varchar(50),
    maximumdjece varchar(50)
);
