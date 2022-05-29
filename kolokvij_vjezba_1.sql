# Kolokvij
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\vjezbe\kolokvij_vjezba_1.sql
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Ivan\Documents\GitHub\vjezbe\kolokvij_vjezba_1.sql

drop database if exists kolokvij_vjezba_1;
create database kolokvij_vjezba_1;
use kolokvij_vjezba_1;

create table sestra(
    sifra int not null primary key auto_increment,
    introvertno bit,
    haljina varchar(31) not null,
    maraka decimal(16,6),
    hlace varchar(46) not null,
    narukvica int not null
);

create table punac(
    sifra int not null primary key auto_increment,
    ogrlica int,
    gustoca decimal(14,9),
    hlace varchar(41) not null
);

create table zena(
    sifra int not null primary key auto_increment,
    treciputa datetime,
    hlace varchar(46),
    kratkamajica varchar(31) not null,
    jmbg char(11) not null,
    bojaociju varchar(39) not null,
    haljina varchar(44),
    sestra int not null
);

create table cura(
    sifra int not null primary key auto_increment,
    novcica decimal(16,5) not null,
    gustoca decimal(18,6) not null,
    lipa decimal(13,10),
    ogrlica int not null,
    bojakose varchar(38),
    suknja varchar(36),
    punac int
);

create table sestra_svekar(
    sifra int not null primary key auto_increment,
    sestra int,
    svekar int
);

create table svekar(
    sifra int not null primary key auto_increment,
    bojaociju varchar(40) not null,
    prstena int,
    dukserica varchar(41),
    lipa decimal(13,8),
    eura decimal(12,7),
    majica varchar(35)
);

create table muskarac(
    sifra int not null primary key auto_increment,
    bojaociju varchar(50) not null,
    hlace varchar(30),
    modelnaocala varchar(43),
    maraka decimal(14,5) not null,
    zena int not null
);

create table mladic(
    sifra int not null primary key auto_increment,
    suknja varchar(50) not null,
    kuna decimal(16,8) not null,
    drugiputa datetime,
    asocijalno bit,
    ekstrovertno bit not null,
    dukserica varchar(48) not null,
    muskarac int
);

alter table zena add foreign key(sestra) references sestra(sifra);
alter table cura add foreign key(punac) references punac(sifra);
alter table muskarac add foreign key(zena) references zena(sifra);
alter table mladic add foreign key(muskarac) references muskarac(sifra);

alter table sestra_svekar add foreign key(sestra) references sestra(sifra);
alter table sestra_svekar add foreign key(svekar) references svekar(sifra);

insert into sestra (introvertno, haljina, maraka, hlace, narukvica)
values (null, 'dugačka', 110.50, 'široke', 3);

insert into sestra (introvertno, haljina, maraka, hlace, narukvica)
values (null, 'kratka', 150, 'dugačke', 1);

insert into sestra (introvertno, haljina, maraka, hlace, narukvica)
values (null, 'šarena', 99.90, 'kratke', 2);

insert into zena (treciputa, hlace, kratkamajica, jmbag, bojaociju, haljina, sestra)
values (null, 'kratke', 'bijela', '12345678912', 'zelena', null, 1);

insert into zena (treciputa, hlace, kratkamajica, jmbag, bojaociju, haljina, sestra)
values (null, 'dugačke', 'roza', '98765432112', 'plava', null, 2);

insert into zena (treciputa, hlace, kratkamajica, jmbag, bojaociju, haljina, sestra)
values (null, 'srednje', 'žuta', '14725836989', 'smeđa', null, 3);

insert into muskarac (bojaociju, hlace, modelnaocala, maraka, zena)
values ('smeđa', 'Jeans', 'Ray ban', 75, 1);

insert into muskarac (bojaociju, hlace, modelnaocala, maraka, zena)
values ('plava', 'svečane', 'Barcelona', 110, 2);

insert into muskarac (bojaociju, hlace, modelnaocala, maraka, zena)
values ('zelena', 'kratke', 'Feishini', 82, 3);

insert into svekar (bojaociju, prstena, dukserica, lipa, eura, majica)
values ('plava', 2, 'žuta', 260, 49, 'plava');

insert into svekar (bojaociju, prstena, dukserica, lipa, eura, majica)
values ('smeđa', 1, 'plava', 589, 68, 'zelena');

insert into svekar (bojaociju, prstena, dukserica, lipa, eura, majica)
values ('zelena', null, 'smeđa', 488, 95, 'žuta');

insert into sestra_svekar (sestra, svekar)
values (1,2);

insert into sestra_svekar (sestra, svekar)
values (2,3);

insert into sestra_svekar (sestra, svekar)
values (3,1);

insert into punac (ogrlica, gustoca, hlace)
values (2,45,'zelene');

insert into punac (ogrlica, gustoca, hlace)
values (1,12.52,'plave');

insert into punac (ogrlica, gustoca, hlace)
values (3,85,'sive');

insert into cura (novcica, gustoca, lipa, ogrlica, bojakose, suknja, punac)
values (54.30, 12, 546, 2, 'smeđa', 'kratka', 1);

insert into cura (novcica, gustoca, lipa, ogrlica, bojakose, suknja, punac)
values (95.30, 58, 589, 1, 'plava', 'dugačka', 2);

insert into cura (novcica, gustoca, lipa, ogrlica, bojakose, suknja, punac)
values (55, 54, 100, 3, 'crna', 'kratka', 3);

