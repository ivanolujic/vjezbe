# Najam skijaške opreme
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\vjezbe\zavrsni_skirent.sql

drop database if exists zavrsni_skirent;
create database zavrsni_skirent;
use zavrsni_skirent;

create table oprema(
    sifra int not null primary key auto_increment,
    vrsta varchar(50) not null,
    marka varchar(50),
    velicina varchar(50) not null,
    duzina decimal(3,0),
    radijus decimal(2,0)
    
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
    oprema int,
    kupac int,
    serviser int,
    datumpocetka datetime not null,
    datumkraja datetime,
    cijena decimal(16,2)
);

alter table usluga add foreign key (kupac) references kupac(sifra);
alter table usluga add foreign key (serviser) references serviser(sifra);
alter table usluga add foreign key (oprema) references oprema(sifra);
