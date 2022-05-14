# Taksi tvrtka ima više vozila. Jedno vozilo vozi jedan vozač. U jednoj vožnji vozač može prevesti više putnika. 
# Jedan putnik se naravno može tijekom vremena imati više vožnji.
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\vjezbe\taxisluzba.sql

drop database if exists taxisluzba;
create database taxisluzba;
use taxisluzba;

create table vozilo(
    sifra int not null primary key auto_increment,
    marka varchar(50) not null,
    tip varchar(50) not null,
    model varchar(50) not null,
    registracija varchar(50) not null,
    godiste datetime,
    vozac int not null
);

create table vozac(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(11) not null,
    datumrodjenja datetime not null,
    iban varchar(50) not null,
    vozilo int not null
);

create table putnik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(11),
    email varchar(100),
    adresa varchar(50) not null
);

create table voznja(
    sifra int not null primary key auto_increment,
    vozilo int,
    vozac int,
    putnik int
);

alter table vozilo add foreign key (vozac) references vozac(sifra);
alter table vozac add foreign key (vozilo) references vozilo(sifra);

alter table voznja add foreign key (vozilo) references vozilo(sifra);
alter table voznja add foreign key (vozac) references vozac(sifra);
alter table voznja add foreign key (putnik) references putnik(sifra);
