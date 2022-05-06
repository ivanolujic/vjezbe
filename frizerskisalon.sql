# tablice za frizerski salon
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\vjezbe\frizerskisalon.sql

drop database if exists frizerskisalon;
create database frizerskisalon;
use frizerskisalon;

create table djelatnica(
    oib varchar(50),
    iban varchar(50),
    osoba varchar(50)
);

create table usluga(
    sisanje varchar(50),
    brijanje varchar(50),
    pranjekose varchar(50),
    minival varchar(50),
    farbanje varchar(50)
);

create table klijent(
    osoba varchar(50),
    email varchar(50),
    telefon varchar(50)
);

create table osoba(
    ime varchar(50),
    prezime varchar(50)
);
