# Najam skijaške opreme
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\vjezbe\zavrsni_skirent.sql

drop database if exists zavrsni_skirent;
create database zavrsni_skirent;
use zavrsni_skirent;

create table skije(
    sifra int not null primary key auto_increment,
    marka varchar(50),
    model varchar(50),
    duzina decimal(3,0),
    radijus decimal(2,0),
    serviser int,
    kupac int
);

create table pancerice(
    sifra int not null primary key auto_increment,
    marka varchar(50),
    model varchar(50),
    velicina decimal(2,0),
    boja varchar(50),
    kupac int
);

create table stapovi(
    sifra int not null primary key auto_increment,
    marka varchar(50),
    model varchar(50),
    duzina decimal(3,0),
    disciplina varchar(50),
    kupac int
);

create table serviser(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib char(11),
    iban char(30)
);

create table kupac(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    adresa varchar(50),
    oib char(11),
    iban char(30)
);

create table usluga(
    sifra int not null primary key auto_increment,
    kupac int,
    serviser int,
    skije int,
    pancerice int,
    stapovi int,
    datum datetime,
    cijena decimal(16,2)
);

alter table usluga add foreign key (kupac) references kupac(sifra);
alter table usluga add foreign key (serviser) references serviser(sifra);
alter table usluga add foreign key (skije) references skije(sifra);
alter table usluga add foreign key (pancerice) references pancerice(sifra);
alter table usluga add foreign key (stapovi) references stapovi(sifra);

alter table skije add foreign key (serviser) references serviser(sifra);

alter table  skije add foreign key (kupac) references kupac(sifra);
alter table  pancerice add foreign key (kupac) references kupac(sifra);
alter table  stapovi add foreign key (kupac) references kupac(sifra);

