/*========================================
               VERI GIRISI
========================================*/
-- INSERT INTO + tablo adi + VALUES + (std_id CHAR(4),std_name VARCHAR(25),std_age int)
-- Degerleri girerken dikkat edilmesi gereken Tabloyu 
-- olustururken degerleri atadigimiz veri cinsinden olmasi
-- String ifadeleri tek tirnak icinde yaziyoruz.
-- Date data tipi de String gibi tek tirnak icine yazilir,
-- ayrica MySQL 'in default tarih formati YYYY-MM-DD seklindedir.
/*******************************************************
-> Bir field'a kaydedilecek verileri UNIQUE yapmak icin 
 table olustururken field isminin yanina UNIQUE yaziyoruz.
-> Bir field'a kaydedilecek verilerde null olmasin istiyorsak 
table olustururken field isminin yanina NOT NULL yaziyoruz.
*********************************************************/
-- Fen Lisesi ogrencilerinin okul no , isim , derece, adres ve 
-- son degisiklik tarihi field'lari olan tablosunu hazirlayalim.
-- okul no field'i UNIQUE olmali, isim field'i da bos birakilmasin.

use sys;

create table fen_lisesi(
okul_no INT UNIQUE,
isim varchar(25),
derece INT,
adres varchar(100),
son_degisiklik_tarihi date
);
select * from fen_lisesi;

INSERT INTO fen_lisesi values (101,'murat metin akkus',4,'balikesir','1999-01-04');
INSERT INTO fen_lisesi values (102,'ali ',4,'balikesir','1997-01-04');
INSERT INTO fen_lisesi values (103,'murat ',4,'balikesir','1979-01-04');
INSERT INTO fen_lisesi values (104,' metin ',4,'balikesir','1989-01-04');
INSERT INTO fen_lisesi values (105,'sevda',4,'balikesir','1969-01-04');
INSERT INTO fen_lisesi values (106,'ayse',4,'balikesir','1959-01-04');

-- UNIQUE olarak belirledigimiz bir field'a istedigimiz kadar NULL deger kaydedebiliriz
-- ancak data tipi String ise hiclik ifadesini sadece 1 kere kaydeder, 
-- diger kayitlarda duplicate hatasi verir.

/* ----------------------------------------------
Q1 : okul_no , isim , adres, derece fieldlari olan 
anadolu lisesi table olusturun. okul_no CHAR ve UNIQUE, 
isim NOT NULL olacak
------------------------------------------------- */

create table anadolu_lisesi(
okul_no char(5) unique,
isim varchar(25) not null,
adres varchar(100),
derece double
);
select * from anadolu_lisesi;

insert into anadolu_lisesi values ('1001','Esat Fatih','Ankara',4.7);
insert into anadolu_lisesi values ('1002','Yusuf Rahman','Ankara',4.89);
insert into anadolu_lisesi values ('1003','Sevda ','Izmir',4.5);
insert into anadolu_lisesi values ('1004','Muhammet ozyon','Istanbul',4.3);
insert into anadolu_lisesi values ('1005','Saida aliyeva','Azerbaycan',4.1);
insert into anadolu_lisesi values ('1006','cemil cetin','mardin',4.9);
insert into anadolu_lisesi values ('','cemil ','Iraq',4.9);-- burda no yerine konulan boslugu sadece bir kere kabul eder.
insert into anadolu_lisesi (adres,isim) values ('Istanbul','Ayse Yilmaz');
insert into anadolu_lisesi (adres,okul_no) values ('Ankara','1008');

