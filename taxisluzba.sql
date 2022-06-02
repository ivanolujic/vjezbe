# Taksi tvrtka ima više vozila. Jedno vozilo vozi jedan vozač. U jednoj vožnji vozač može prevesti više putnika. 
# Jedan putnik se naravno može tijekom vremena imati više vožnji.
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\vjezbe\taxisluzba.sql
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Ivan\Documents\GitHub\vjezbe\taxisluzba.sql

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

insert into vozac (ime, prezime, oib, datumrodjenja, iban, vozilo)
values ('Luka', 'Vidović', '12345678998', '1995-03-21', 
'HR3200284574158782', 'Toyota');

insert into vozac (ime, prezime, oib, datumrodjenja, iban, vozilo)
values ('Matej', 'Bilić', '12345648998', '1980-05-03', 
'HR3200284574158782', 'Opel');

insert into vozac (ime, prezime, oib, datumrodjenja, iban, vozilo)
values ('Marin', 'Hrgović', '12345671568', '1977-09-03', 
'HR3200284574158782', 'Škoda');

insert into vozilo (marka, model, tip, registracija, vozac)
values ('Opel', 'Corsa', '1.2', 'OS-123-DB', 1);

insert into vozilo (marka, model, tip, registracija,vozac)
values ('Toyota', 'Corola', '2.0', 'OS-453-JH', 2);

insert into vozilo (marka, model, tip, registracija, vozilo)
values ('Škoda', 'Octavia', '1.4', 'ZG 8597-HJ', 3);




