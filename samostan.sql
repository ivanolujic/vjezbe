# U samostanu se nalaze svećenici. Svaki svećenik je zadužen za više poslova. Jedan posao u isto vrijeme može obavljati više svećenika. 
# Svaki svećenik ima samo jednog nadređenog svećenika
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\vjezbe\samostan.sql
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 <C:\Users\Ivan\Documents\GitHub\vjezbe\samostan.sql 

drop database if exists samostan;
create database samostan;
use samostan;

create table poslovi(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    mjesto varchar(50) not null,
    pocetak datetime not null,
    zavrsetak datetime
);

create table zaduzenje(
    sifra int not null primary key auto_increment,
    poslovi int not null,
    svecenik int not null
);

create table svecenik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    datumrodjenja datetime,
    oib char(11) not null,
    email varchar(100),
    nadredjenisvecenik int not null
);


alter table zaduzenje add foreign key (poslovi) references poslovi(sifra);
alter table zaduzenje add foreign key (svecenik) references svecenik(sifra);

alter table svecenik add foreign key (nadredjenisvecenik) references svecenik(sifra); # alter table za postavljanje veze unutar iste tablice
