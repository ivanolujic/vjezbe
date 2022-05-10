# U muzeju postoji više izložaba. Jedna izložba ima više djela. Svaki kustos je zadužen za jednu izložbu. Svaka izložba ima jednog sponzora.
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\vjezbe\muzej.sql

drop database if exists muzej;
create database muzej;
use muzej;

create table izlozba(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    pocetak datetime not null,
    zavrsetak datetime,
    cijena decimal(18,2),
    kustos int not null,
    sponzor int not null
);

create table djelo(
    sifra int not null primary key auto_increment,
    nazivdjela varchar(100) not null,
    autor varchar(50) not null,
    izlozba int not null,
    kustos int not null
);

create table kustos(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    izlozba int not null,
    oib char(11) not null,
    email varchar(100),
    iban varchar(50)
);

create table sponzor(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    izlozba int not null,
    iznos decimal(18,2)
);

alter table izlozba add foreign key (kustos) references kustos(sifra);
alter table izlozba add foreign key (sponzor) references sponzor(sifra);

alter table djelo add foreign key (izlozba) references izlozba(sifra);
