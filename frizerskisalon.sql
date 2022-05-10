# U frizerskom salonu radi više djelatnica. Jedna djelatnica na dan radi s više korisnika. Korisnik tijekom jednog posjeta koristi jednu usluga
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\vjezbe\frizerskisalon.sql

drop database if exists frizerskisalon;
create database frizerskisalon;
use frizerskisalon;

create table djelatnica(
    sifra int not null primary key auto_increment,
    oib char(11) not null,
    iban varchar(50) not null,
    osoba int not null
);

create table usluga(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    cijena decimal(18,2) not null,
    djelatnica int not null,
    klijent int not null
);

create table klijent(
    sifra int not null primary key auto_increment,
    osoba int not null,
    email varchar(100),
    telefon varchar(50)
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null
);

alter table djelatnica add foreign key (osoba) references osoba(sifra);
alter table klijent add foreign key (osoba) references osoba(sifra);

alter table usluga add foreign key (djelatnica) references djelatnica(sifra);
alter table usluga add foreign key (klijent) references klijent(sifra);

