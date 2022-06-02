# Postolar popravlja obuću. Jedan korisnik može postolaru donijeti više komada obuće na popravak dok jedan komad obuće može biti više puta na popravku.
# Postolar ima šegrta koji sudjeluje u određenim popravcima obuće

# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\vjezbe\postolar.sql
# # C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Ivan\Documents\GitHub\vjezbe\postolar.sql

drop database if exists postolar;
create database postolar;
use postolar;

create table obuca(
    vrsta varchar(50),
    velicina varchar(50),
    boja varchar(50),
    proizvodjac varchar(50)
);

create table djelatnik(
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    email varchar(50),
    adresa varchar(50),
    datumrodjenja varchar(50),
    iban varchar(50),
    statusdjelatnika varchar(50)
);

create table korisnik(
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    email varchar(50),
    adresa varchar(50),
    nacinplacanja varchar(50)
);

create table usluga(
    obuca varchar(50),
    djelatnik varchar(50),
    korisnik varchar(50),
    cijena varchar(50),
    nacinplacanja varchar(50)
);