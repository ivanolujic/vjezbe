# djecji vrtic
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\vjezbe\djecjivrtic.sql

drop database if exists djecjivrtic;
create database djecjivrtic;
use djecjivrtic;

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(11) not null,
    datumrodjenja datetime not null
);

create table odgojiteljica(
    sifra int not null primary key auto_increment,
    iban varchar(50) not null,
    email varchar(100),
    osoba int not null
);

create table dijete(
    sifra int not null primary key auto_increment,
    osoba int not null,
    boravak boolean not null,
    cijena decimal(18,2),
    skupina int not null
);

create table skupina(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    odgojiteljica int not null,
    maximumdjece int not null
);

alter table skupina add foreign key (odgojiteljica) references odgojiteljica(sifra);
alter table dijete add foreign key (skupina) references skupina(sifra);

alter table odgojiteljica add foreign key (osoba) references osoba(sifra);
alter table dijete add foreign key (osoba) references osoba(sifra);
