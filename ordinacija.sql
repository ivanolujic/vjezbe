# Doktor liječi pacijente. Jednog pacijenta može liječiti više puta. U liječenju pacijenta doktoru pomažu medicinske sestre

# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\vjezbe\ordinacija.sql

drop database if exists ordinacija;
create database ordinacija;
use ordinacija;

create table doktor(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(11) not null,
    spol varchar(50) not null,
    email varchar(100),
    adresa varchar(50),
    datumrodjenja datetime,
    iban varchar(50) not null,
    sifradok char(9) not null
);

create table medsestra(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(11) not null,
    spol char(1) not null,
    email varchar(100),
    adresa varchar(50),
    datumrodjenja datetime,
    iban varchar(50) not null
);

create table korisnik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(11) not null,
    spol varchar(50) not null,
    email varchar(100),
    adresa varchar(50),
    datumrodjenja datetime,
    mbo char(13) not null
    
);

create table posjet(
    sifra int not null primary key auto_increment,
    datum date not null,
    dijagnoza varchar(100),
    doktor int not null,
    medsestra int not null,
    korisnik int not null,
    cijena decimal(18,2) not null,
    nacinplacanja varchar(50),
    lijek varchar(50)
);

alter table posjet add foreign key (doktor) references doktor(sifra);
alter table posjet add foreign key (medsestra) references medsestra(sifra);
alter table posjet add foreign key (korisnik) references korisnik(sifra);