# U muzeju postoji više izložaba. Jedna izložba ima više djela. Svaki kustos je zadužen za jednu izložbu. Svaka izložba ima jednog sponzora.
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\vjezbe\muzej.sql

drop database if exists muzej;
create database muzej;
use muzej;

create table izlozba(
    naziv varchar(50),
    autor varchar(50),
    pocetak varchar(50),
    zavrsetak varchar(50),
    cijena varchar(50),
    kustos varchar(50),
    sponzor varchar(50)
);

create table djelo(
    nazivdjela varchar(50),
    autor varchar(50),
    izlozba varchar(50),
    kustos varchar(50)
);

create table kustos(
    ime varchar(50),
    prezime varchar(50),
    izlozba varchar(50),
    oib varchar(50),
    email varchar(50),
    iban varchar(50)
);

create table sponzor(
    naziv varchar(50),
    izlozba varchar(50),
    iznos varchar(50)
);