# U samostanu se nalaze svećenici. Svaki svećenik je zadužen za više poslova. Jedan posao u isto vrijeme može obavljati više svećenika. 
# Svaki svećenik ima samo jednog nadređenog svećenika
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\vjezbe\samostan.sql

drop database if exists samostan;
create database samostan;
use samostan;

create table poslovi(
    naziv varchar(50),
    mjesto varchar(50),
    pocetak varchar(50),
    zavrsetak varchar(50)
);

create table zaduzenje(
    poslovi varchar(50),
    svecenik varchar(50)
);

create table svecenik(
    ime varchar(50),
    prezime varchar(50),
    datumrodjenja varchar(50),
    oib varchar(50),
    nadredjenisvecenik varchar(50),
    email varchar(50)
);