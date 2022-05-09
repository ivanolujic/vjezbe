# Doktor liječi pacijente. Jednog pacijenta može liječiti više puta. U liječenju pacijenta doktoru pomažu medicinske sestre

# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\vjezbe\ordinacija.sql

drop database if exists ordinacija;
create database ordinacija;
use ordinacija;

create table djelatnik(
    osoba varchar(50),
    datumrodjenja varchar(50),
    iban varchar(50),
    sifradok varchar(50),
    radnomjesto varchar(50)
);

create table osoba(
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    spol varchar(50),
    email varchar(50),
    adresa varchar(50)
);

create table korisnik(
    osoba varchar(50),
    mbo varchar(50),
    nacinplacanja varchar(50)
);

create table posjet(
    datum varchar(50),
    dijagnoza varchar(50),
    djelatnik varchar(50),
    korisnik varchar(50),
    cijena varchar(50),
    lijek varchar(50)
);