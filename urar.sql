# Urar popravlja satove. Jedan korisnik može uraru donijeti više satova na popravak dok jedan sat može biti više puta na popravku. 
# Urar ima šegrta koji sudjeluje u određenim popravcima satova

# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\vjezbe\urar.sql
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Ivan\Documents\GitHub\vjezbe\urar.sql

drop database if exists urar;
create database urar;
use urar;

create table sat(
    vrsta varchar(50),
    velicina varchar(50),
    pogon varchar(50),
    marka varchar(50)
);

create table djelatnik(
    osoba varchar(50),
    datumrodjenja varchar(50),
    iban varchar(50),
    statusdjelatnika varchar(50)
);

create table osoba(
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    email varchar(50),
    adresa varchar(50)
);

create table korisnik(
    osoba varchar(50),
    nacinplacanja varchar(50)
);

create table usluga(
    sat varchar(50),
    djelatnik varchar(50),
    korisnik varchar(50),
    cijena varchar(50),
    nacinplacanja varchar(50)
);