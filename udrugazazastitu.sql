# tablice za udrugu za zastitu zivotinja
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\vjezbe\udrugazazastitu.sql
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Ivan\Documents\GitHub\vjezbe\udrugazazastitu.sql

drop database if exists udrugazazastitu;
create database udrugazazastitu;
use udrugazazastitu;

create table djelatnik(
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    email varchar(50)
);

create table sticenik(
    ime varchar(50),
    vrsta varchar(50),
    starost varchar(50)
);

create table prostor(
    boks varchar(50),
    nastamba varchar(50),
    krletka varchar(50)
);
