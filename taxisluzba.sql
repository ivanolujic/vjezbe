# Taksi tvrtka ima više vozila. Jedno vozilo vozi jedan vozač. U jednoj vožnji vozač može prevesti više putnika. 
# Jedan putnik se naravno može tijekom vremena imati više vožnji.
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\vjezbe\taxisluzba.sql

drop database if exists taxisluzba;
create database taxisluzba;
use taxisluzba;

create table vozilo(
    marka varchar(50),
    tip varchar(50),
    model varchar(50),
    registracija varchar(50),
    godiste varchar(50),
    vozac varchar(50)
);

create table vozac(
    osoba varchar(50),
    datumrodjenja varchar(50),
    iban varchar(50),
    vozilo varchar(50)
);

create table osoba(
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50)
);

create table putnik(
    osoba varchar(50),
    email varchar(50),
    adresa varchar(50)
);

create table voznja(
    vozilo varchar(50),
    vozac varchar(50),
    putnik varchar(50)
);