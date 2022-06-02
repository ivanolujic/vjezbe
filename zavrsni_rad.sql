# Radionice za djecu

# Path
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\vjezbe\zavrsni_rad.sql
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Ivan\Documents\GitHub\vjezbe\zavrsni_rad.sql

drop database if exists zavrsni_rad;
create database zavrsni_rad;
use zavrsni_rad;

create table program(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    dobnaskupina varchar(50) not null,
    brojsati int not null
);

create table nastavnagrupa(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    program int not null,
    datumpocetka datetime,
    datumzavrsetka datetime,
    cijena decimal(18,2),
    maksimalnopolaznika int,
    predavac int
);

create table predavac(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(11) not null,
    iban varchar(50),
    email varchar(100),
    radniodnos varchar(50) not null
);

create table ucesnik(
    sifra int not null primary key auto_increment,
    imedjeteta varchar(50) not null,
    prezimedjeteta varchar(50) not null,
    imeroditelja varchar(50) not null,
    prezimeroditelja varchar(50) not null,
    oibroditelja char(11) not null,
    adresa varchar(100),
    email varchar(100),
    nacinplacanja varchar(50) not null,
    popust decimal(3,2)
);

create table poveznica(
    sifra int not null primary key auto_increment,
    ucesnik int not null,
    nastavnagrupa int not null
);

alter table nastavnagrupa add foreign key (program) references program(sifra);
alter table nastavnagrupa add foreign key (predavac) references predavac(sifra);

alter table poveznica add foreign key (ucesnik) references ucesnik(sifra);
alter table poveznica add foreign key (nastavnagrupa) references nastavnagrupa(sifra);

